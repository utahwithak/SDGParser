//
// COPYRIGHT 2023 Free Bits
// Created by Carl Wieland on 2/23/23
// 

import Foundation

extension Sequence {

    public func sorted<Value>(
        by keyPath: KeyPath<Self.Element, Value>,
        using valuesAreInIncreasingOrder: (Value, Value) throws -> Bool)
    rethrows -> [Self.Element]
    {
        return try self.sorted(by: {
            try valuesAreInIncreasingOrder($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }

    public func sorted<Value: Comparable>(
        by keyPath: KeyPath<Self.Element, Value>)
    -> [Self.Element]
    {
        return self.sorted(by: keyPath, using: <)
    }

}
