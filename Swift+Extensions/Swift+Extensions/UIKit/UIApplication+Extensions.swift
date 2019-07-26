//
//  UIApplication+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 12/14/16.
//  Copyright © 2016 BitInvent. All rights reserved.
//

import UIKit

extension UIApplication {
    
    /// Statusbar height.
    var statusBarHeight: CGFloat {
        return statusBarFrame.height
    }
    
    /// Most top view controller.
    var topViewController: UIViewController? {
        return keyWindow?.rootViewController
    }
    
    func toggleNetworkActivityIndicator(show: Bool) {
        OperationQueue.main.addOperation {
            UIApplication.shared.isNetworkActivityIndicatorVisible = show
        }
    }
    
}
