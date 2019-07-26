import UIKit

extension UINavigationBar {
    /// Turn the navigation bar transparent (The bar button items stay visible).
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
    
    func hideBottomHairline() {
        let navBarHairlineImageView = findHairlineImageViewUnderView(self)
        navBarHairlineImageView?.isHidden = true
    }
    
    private func findHairlineImageViewUnderView(_ view: UIView) -> UIImageView? {
        if view is UIImageView && view.bounds.size.height <= 1.0 {
            return view as? UIImageView
        }
        for subView in view.subviews {
            if let imageView = findHairlineImageViewUnderView(subView) {
                return imageView
            }
        }
        return nil
    }
}
