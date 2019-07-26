//
//  UIToolbar+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 1/9/17.
//  Copyright © 2017 BitInvent. All rights reserved.
//

import UIKit

extension UIToolbar {
    
    func setTransparent(_ transparent: Bool, translucent: Bool = true) {
        if transparent {
            setBackgroundImage(UIImage(), forToolbarPosition: .any, barMetrics: .default)
            setShadowImage(UIImage(), forToolbarPosition: .any)
        } else {
            setBackgroundImage(nil, forToolbarPosition: .any, barMetrics: .default)
            setShadowImage(nil, forToolbarPosition: .any)
        }
        
        isTranslucent = translucent
    }
    
}
