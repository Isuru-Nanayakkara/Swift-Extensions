//
//  UINavigationItem+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 1/18/17.
//  Copyright © 2017 BitInvent. All rights reserved.
//

import UIKit

extension UINavigationItem {
    func setDynamicTitle(_ title: String) {
        self.title = title
        let frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        let label = UILabel(frame: frame)
        label.text = self.title
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.backgroundColor = UIColor.clear
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        titleView = label
    }
}
