import Foundation

extension Bundle {
    
    /// App's name that displays on the springboard.
    var appDisplayName: String? {
        return infoDictionary?[kCFBundleNameKey as String] as? String
    }
    
    /// App's current build number.
    var appBuild: String? {
        return infoDictionary?[kCFBundleVersionKey as String] as? String
    }
    
    /// App's current version.
    var appVersion: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
}
