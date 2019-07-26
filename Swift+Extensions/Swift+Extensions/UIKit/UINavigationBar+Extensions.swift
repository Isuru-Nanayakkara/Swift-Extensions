//
//  UINavigationBar+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 1/9/17.
//  Copyright © 2017 BitInvent. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func setTransparent(_ transparent: Bool, translucent: Bool = true) {
        if transparent {
            setBackgroundImage(UIImage(), for: .default)
            shadowImage = UIImage()
            isTranslucent = translucent
        } else {
            setBackgroundImage(nil, for: .default)
            shadowImage = nil
            isTranslucent = translucent
        }
    }
    
}
