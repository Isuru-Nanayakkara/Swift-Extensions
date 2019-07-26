//
//  UIScreen+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 12/14/16.
//  Copyright © 2016 BitInvent. All rights reserved.
//

import UIKit

extension UIScreen {
    
    /// Screen height.
    var screenHeight: CGFloat {
        return bounds.size.height
    }
    
    /// Screen width.
    var screenWidth: CGFloat {
        return bounds.size.width
    }
    
    var isRetina: Bool {
        return UIScreen.main.responds(to: #selector(UIScreen.displayLink(withTarget:selector:))) && UIScreen.main.scale == 2.0
    }
    
    var isRetinaHD: Bool {
        return UIScreen.main.responds(to: #selector(UIScreen.displayLink(withTarget:selector:))) && UIScreen.main.scale == 3.0
    }
    
    
}
