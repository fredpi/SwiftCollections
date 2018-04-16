//
//  WeakSet.swift
//  SwiftCollections
//
//  Created by Frederick Pietschmann on 12.03.18.
//  Copyright © 2018 Piknotech. All rights reserved.
//

import Foundation

struct WeakSet<Element: Hashable> where Element: AnyObject {
    // MARK: - Properties
    var contents: Set<Element> {
        return Set(wrappedContents.compactMap { $0.value })
    }

    private var wrappedContents = Set<Weak<Element>>()

    // MARK: - Initializers
    init() { }

    init<S: Sequence>(_ sequence: S) where S.Iterator.Element == Element {
        for element in sequence {
            insert(element)
        }
    }

    // MARK: - Methods
    mutating func insert(_ item: Element) {
        clean()
        wrappedContents.insert(Weak<Element>(item))
    }

    mutating func remove(_ item: Element) {
        clean()
        wrappedContents.remove(Weak<Element>(item))
    }

    mutating func clean() {
        wrappedContents = wrappedContents.filter { $0.value != nil }
    }
}

// MARK: - CustomStringConvertible
extension WeakSet: CustomStringConvertible {
    var description: String {
        return "WeakSet<\(String(describing: contents))>"
    }
}

// MARK: - ExpressibleByArrayLiteral
extension WeakSet: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        self.init(elements)
    }
}
