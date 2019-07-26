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
    
    /// Toggle showing network spinning gear in status bar.
    func toggleNetworkActivityIndicator(show: Bool) {
        OperationQueue.main.addOperation {
            UIApplication.shared.isNetworkActivityIndicatorVisible = show
        }
    }
}
