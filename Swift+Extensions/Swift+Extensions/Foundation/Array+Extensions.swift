//
//  Array+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 7/26/19.
//  Copyright © 2019 BitInvent. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    mutating func move(_ element: Element, to newIndex: Index) {
        if let oldIndex: Int = self.index(of: element) { self.move(from: oldIndex, to: newIndex) }
    }
}

extension Array {
    mutating func move(from oldIndex: Index, to newIndex: Index) {
        // Don't work for free and use swap when indices are next to each other - this
        // won't rebuild array and will be super efficient.
        if oldIndex == newIndex { return }
        if abs(newIndex - oldIndex) == 1 { return self.swapAt(oldIndex, newIndex) }
        self.insert(self.remove(at: oldIndex), at: newIndex)
    }
}
