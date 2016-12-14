//
//  UIDevice+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 12/14/16.
//  Copyright © 2016 BitInvent. All rights reserved.
//

import UIKit

extension UIDevice {
    
    var isPad: Bool {
        return userInterfaceIdiom == .pad
    }
    
    var isPhone: Bool {
        return userInterfaceIdiom == .phone
    }
    
    var isTV: Bool {
        return userInterfaceIdiom == .tv
    }
    
}
