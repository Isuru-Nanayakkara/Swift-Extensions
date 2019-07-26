import UIKit

extension UITableView {
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func hideEmptyCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    func addVisualEffect(_ style: UIBlurEffect.Style) {
        backgroundColor = .clear
        backgroundView = UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
}
