//
//  UIButton+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 7/26/19.
//  Copyright © 2019 BitInvent. All rights reserved.
//

import UIKit

extension UIButton {
    public func setBackgroundColor(_ color: UIColor?, forState state: UIControl.State) {
        guard let color = color else { return setBackgroundImage(nil, for: state) }
        setBackgroundImage(UIImage.imageColored(color), for: state)
    }
}

extension UIImage {
    public class func imageColored(_ color: UIColor) -> UIImage! {
        let onePixel = 1 / UIScreen.main.scale
        let rect = CGRect(x: 0, y: 0, width: onePixel, height: onePixel)
        UIGraphicsBeginImageContextWithOptions(rect.size, color.cgColor.alpha == 1, 0)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor( color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
