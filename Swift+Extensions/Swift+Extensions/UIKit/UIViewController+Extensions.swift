//
//  UIViewController+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 7/26/19.
//  Copyright © 2019 BitInvent. All rights reserved.
//

import UIKit

extension UIViewController {
    func showErrorAlert(_ error: Error? = nil, title: String? = nil, message: String? = nil, _ onCompletion: ((UIAlertAction) -> ())? = nil) {
        var errorMessage = message
        var errorTitle = title
        
        if let error = error {
            errorMessage = error.localizedDescription
        } else {
            errorMessage = message
        }
        
        if let title = title {
            errorTitle = title
        } else {
            errorTitle = "Error"
        }
        
        let alert = UIAlertController(title: errorTitle, message: errorMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: onCompletion))
        OperationQueue.main.addOperation {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func showSuccessAlert(_ title: String? = "Success", message: String? = nil, _ onCompletion: ((UIAlertAction) -> ())? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: onCompletion))
        OperationQueue.main.addOperation {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func showInfoAlert(_ title: String, message: String, _ onCompletion: ((UIAlertAction) -> ())? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: onCompletion))
        OperationQueue.main.addOperation {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    func showSettingsAlert(title: String?, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Settings", style: .default) { action in
            let settingsURL = URL(string: UIApplication.openSettingsURLString)!
            if UIApplication.shared.canOpenURL(settingsURL) {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(settingsURL, options: [:])
                } else {
                    UIApplication.shared.openURL(settingsURL)
                }
            }
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        OperationQueue.main.addOperation {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
