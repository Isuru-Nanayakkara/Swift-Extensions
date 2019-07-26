import UIKit

extension UIToolbar {
    /// Turn the tool bar transparent (The bar button items stay visible).
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
