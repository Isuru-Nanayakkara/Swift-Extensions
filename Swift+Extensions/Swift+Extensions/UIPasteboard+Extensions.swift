//
//  UIPasteboard+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 1/9/17.
//  Copyright © 2017 BitInvent. All rights reserved.
//

import Foundation
import UIKit

extension UIPasteboard {
    
    static func copy(text: String) {
        general.string = text
    }
    
    static func getString() -> String {
        guard let pasteboardText = general.string else {
            return ""
        }
        return pasteboardText
    }
    
}
