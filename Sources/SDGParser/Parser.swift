import Foundation
import SwiftyXMLParser

@available(iOS 15.0.0, *)
@available(macOS 12.0.0, *)
public struct Parser {
    
    public enum ParseError: Error {
        case failedToOpenStream
        case failedToCreateStreamData
        case emptyStream
    }

    
    public static func parse(game at: URL) async throws  -> Game {
        guard let inputStream = InputStream(url: at) else {
            throw ParseError.failedToOpenStream
        }
        return try await parse(game: inputStream)
    }
    
    public static func parse(game from: String) async throws  -> Game {
        guard let data = from.data(using: .utf8) else {
            throw ParseError.failedToCreateStreamData
        }
        let stream = InputStream(data: data)
        
        return try await parse(game: stream)
    }
    
    public static func parse(game stream: InputStream) async throws -> Game {
        stream.open()
        defer {
            stream.close()
        }
        
        guard stream.hasBytesAvailable else {
            throw ParseError.emptyStream
        }
        
        let document = XML.parse(stream)
        
        
        return Game(accessor: document)
    }
    
    public static func serialize(game: Game) throws -> String {
        let document = try XML.Converter(game.accessor).makeDocument()
        return document
        
    }
}


