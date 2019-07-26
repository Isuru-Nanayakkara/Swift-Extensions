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
