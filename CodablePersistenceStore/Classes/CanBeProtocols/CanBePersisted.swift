//
//  CanBePersisted.swift
//  CodablePersistenceStore
//
//  Created by Mario Zimmermann on 16.11.17.
//

import Foundation

public protocol CanBePersistedProtocol: CanBeIdentifiedProtocol {
   static func path() -> String
}

public extension CanBePersistedProtocol {
    static func ==(lhs:Self, rhs:Self) -> Bool {
        return (type(of:lhs).path() == type(of:rhs).path() && lhs.id() == rhs.id())
    }
}
