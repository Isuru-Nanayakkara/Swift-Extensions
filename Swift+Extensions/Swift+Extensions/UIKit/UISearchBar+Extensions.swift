//
//  UISearchBar+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 7/26/19.
//  Copyright © 2019 BitInvent. All rights reserved.
//

import UIKit

extension UISearchBar {
    func setPlaceholderTextColor(_ color: UIColor) {
        guard let textFieldInsideSearchBar = value(forKey: "searchField") as? UITextField else { return }
        guard let textFieldInsideSearchBarLabel = textFieldInsideSearchBar.value(forKey: "placeholderLabel") as? UILabel else { return }
        textFieldInsideSearchBarLabel.textColor = color
    }
    
    func setTextColor(_ color: UIColor) {
        guard let textFieldInsideSearchBar = value(forKey: "searchField") as? UITextField else { return }
        textFieldInsideSearchBar.textColor = color
    }
}
