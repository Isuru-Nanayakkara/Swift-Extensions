//
//  UIWebView+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 1/9/17.
//  Copyright © 2017 BitInvent. All rights reserved.
//

import UIKit

extension UIWebView {
    
    func removeBackgroundShadow() {
        for i in 0 ..< scrollView.subviews.count {
            let singleSubview: UIView = scrollView.subviews[i]
            if singleSubview.isKind(of: UIImageView.self), singleSubview.frame.origin.x <= 500 {
                singleSubview.isHidden = true
                singleSubview.removeFromSuperview()
            }
        }
    }
    
}
