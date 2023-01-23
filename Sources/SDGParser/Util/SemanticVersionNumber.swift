//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 1/18/23
// 

import Foundation
public struct SemanticVersionNumber: Equatable {
    public let major: Int
    public let minor: Int
    public let patch: Int

    public init?(version: String) {
        let components = version.split(separator: ".")
        guard components.count == 3 else { return nil }

        self.init(major: String(components[0]),
                  minor: String(components[1]),
                  patch: String(components[2]))
    }

    public init?(major: String, minor: String, patch: String) {
        guard
            let majorAsInt = Int(major),
            let minorAsInt = Int(minor),
            let patchAsInt = Int(patch)
        else {
            return nil
        }

        self.init(major: majorAsInt,
                  minor: minorAsInt,
                  patch: patchAsInt)
    }

    public init(major: Int, minor: Int, patch: Int) {
        self.major = major
        self.minor = minor
        self.patch = patch
    }
}

extension SemanticVersionNumber: Comparable {
    public static func <(lhs: SemanticVersionNumber, rhs: SemanticVersionNumber) -> Bool {
        return (lhs.major < rhs.major)
        || (lhs.major == rhs.major && lhs.minor < rhs.minor)
        || (lhs.major == rhs.major && lhs.minor == rhs.minor && lhs.patch < rhs.patch)
    }
}

extension SemanticVersionNumber: CustomStringConvertible {
    public var description: String {
        return "\(major).\(minor).\(patch)"
    }
}
