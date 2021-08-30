import XCTest
import SwiftyXMLParser
@testable import SDGParser

@available(macOS 12.0.0, *)
@available(iOS 15.0.0, *)
final class SDGParserTests: XCTestCase {
    
    func url(for game: String) -> URL? {
        return Bundle.module.url(forResource: game, withExtension: "txt", subdirectory: "test_games")
    }
    
    func testEmptyTrip() async throws {
        guard let test1Game = url(for: "emptyGame") else {
            XCTFail("Failed to find game")
            return
        }
        let strVal = try String(contentsOf: test1Game).trimmingCharacters(in: .whitespacesAndNewlines)
        do {
            _ = try await Parser.parse(game: strVal)
            XCTFail("empty game parsed")
        }catch {
            
            if let parsed = error as? SDGParser.Parser.ParseError {
                XCTAssert(parsed == .emptyStream)
            } else {
                XCTFail("Unexpected Error Type")
            }
            
        }

    }
    
    func testXMLTrip() async throws {
        guard let test1Game = url(for: "xml_header") else {
            XCTFail("Failed to find game")
            return
        }
        let game = try await Parser.parse(game: test1Game)
        do {
            let serializedValue = try Parser.serialize(game: game)

            let secondGame = try await Parser.parse(game: serializedValue)
            XCTAssert(areGamesEqual(game1: game, game2: secondGame))
        } catch {
            XCTFail("Failed to serialize xml")
        }
    }
    
    func testFarmName() async throws {
        guard let gameURL = url(for: "player") else {
            XCTFail("Failed to find game")
            return
        }

        let game = try await Parser.parse(game: gameURL)
        XCTAssert(game.player.farmName == "TEST_FARM_NAME")
    }
    
    func testSetFarmname() async throws {
        guard let gameURL = url(for: "player") else {
            XCTFail("Failed to find game")
            return
        }

        let game = try await Parser.parse(game: gameURL)
        XCTAssert(game.player.farmName == "TEST_FARM_NAME")
        game.player.name = "TEST_SET_FARM_NAME"
        do {
            let serializedValue = try Parser.serialize(game: game)

            let secondGame = try await Parser.parse(game: serializedValue)
            XCTAssert(secondGame.player.name == "TEST_SET_FARM_NAME")
            XCTAssert(areGamesEqual(game1: game, game2: secondGame))
        } catch {
            XCTFail("Failed to serialize xml")
        }
    }
    
    func testPlayerName() async throws {
        guard let gameURL = url(for: "player") else {
            XCTFail("Failed to find game")
            return
        }

        let game = try await Parser.parse(game: gameURL)
        XCTAssert(game.player.name == "PLAYER_NAME")
    }
    
    func testSetPlayerName() async throws {
        guard let gameURL = url(for: "player") else {
            XCTFail("Failed to find game")
            return
        }

        let game = try await Parser.parse(game: gameURL)
        XCTAssert(game.player.name == "PLAYER_NAME")
        game.player.name = "TEST_SET_PLAYER_NAME"
        do {
            let serializedValue = try Parser.serialize(game: game)

            let secondGame = try await Parser.parse(game: serializedValue)
            XCTAssert(secondGame.player.name == "TEST_SET_PLAYER_NAME")
            XCTAssert(areGamesEqual(game1: game, game2: secondGame))
        } catch {
            XCTFail("Failed to serialize xml")
        }
    }
    
    func testGetPlayerMoney() async throws {
        guard let gameURL = url(for: "player") else {
            XCTFail("Failed to find game")
            return
        }

        let game = try await Parser.parse(game: gameURL)
        XCTAssert(game.player.money == 80808080)

    }
    
    func testSetPlayerMoney() async throws {
        guard let gameURL = url(for: "player") else {
            XCTFail("Failed to find game")
            return
        }

        let game = try await Parser.parse(game: gameURL)
        XCTAssert(game.player.money == 80808080)
        game.player.money = 101010101
        do {
            let serializedValue = try Parser.serialize(game: game)

            let secondGame = try await Parser.parse(game: serializedValue)
            XCTAssert(secondGame.player.money == 101010101)
            XCTAssert(areGamesEqual(game1: game, game2: secondGame))
        } catch {
            XCTFail("Failed to serialize xml")
        }
    }
    
    
    func areGamesEqual(game1: Game, game2: Game) -> Bool {
    
        guard let g1All = game1.accessor.all else {
            return game2.accessor.all == nil
        }
        guard let g2All = game2.accessor.all else {
            return false
        }
        
        guard g1All.count == g2All.count else {
            return false
        }
        
        for i in 0..<g1All.count {
            if g1All[i] != g2All[i] {
                return false
            }
        }
        
        return true
    }
    
}

extension XML.Element: Equatable {

    public static func ==(lhs: XML.Element, rhs: XML.Element) -> Bool {
        guard lhs.name == rhs.name else {
            return false
        }
        guard lhs.attributes == rhs.attributes else {
            return false
        }
        
        guard lhs.childElements == rhs.childElements else {
            return false
        }
        
        return true
    }
}
