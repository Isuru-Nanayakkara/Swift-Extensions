import Foundation
import UIKit

extension UIPasteboard {
    
    static func copy(text: String) {
        general.string = text
    }
    
    static func getString() -> String {
        guard let pasteboardText = general.string else {
            return ""
        }
        return pasteboardText
    }
    
}
