import UIKit

extension String {
    
    /// String encoded in base64.
    var base64Encoded: String? {
        let plainData = data(using: .utf8)
        return plainData?.base64EncodedString()
    }
    
    /// String decoded from base64.
    var base64Decoded: String? {
        guard let decodedData = Data(base64Encoded: self) else {
            return nil
        }
        return String(data: decodedData, encoding: .utf8)
    }
    
    /// First character of string.
    var firstCharacter: String? {
        return map({String($0)}).first
    }
    
    /// Check if string contains one or more letters.
    var hasLetters: Bool {
        return rangeOfCharacter(from: .letters, options: .numeric, range: nil) != nil
    }
    
    /// Check if string contains one or more numbers.
    var hasNumbers: Bool {
        return rangeOfCharacter(from: .decimalDigits, options: .literal, range: nil) != nil
    }
    
    /// Check if string contains only letters.
    var isAlphabetic: Bool {
        return hasLetters && !hasNumbers
    }
    
    /// Check if string contains only numbers.
    var isNumeric: Bool {
        return !hasLetters && hasNumbers
    }
    
    /// Check if string is valid email format.
    var isEmail: Bool {
        // http://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    /// Reversed string.
    var reversed: String {
        return String(reversed())
    }
    
    /// String with no spaces or new lines in beginning and end.
    var trimmed: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Array with unicodes for all characters in a string.
    var unicodeArray: [Int] {
        return unicodeScalars.map({$0.hashValue})
    }
    
    /// Readable string from a URL string.
    var urlDecoded: String {
        return removingPercentEncoding ?? self
    }
    
    /// URL escaped string.
    var urlEncoded: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
    /// Bold string.
    var bold: NSAttributedString {
        return NSMutableAttributedString(string: self, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.font): UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)]))
    }
    
    /// Underlined string.
    var underline: NSAttributedString {
        return NSAttributedString(string: self, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.underlineStyle): NSUnderlineStyle.single.rawValue]))
    }
    
    /// Italic string.
    var italic: NSAttributedString {
        return NSMutableAttributedString(string: self, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.font): UIFont.italicSystemFont(ofSize: UIFont.systemFontSize)]))
    }
    
    /// Strikethrough string.
    var strikethrough: NSAttributedString {
        return NSAttributedString(string: self, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.strikethroughStyle): NSNumber(value: NSUnderlineStyle.single.rawValue as Int)]))
    }
    
    var lastPathComponent: String {
        return (self as NSString).lastPathComponent
    }
    
    var pathExtension: String {
        return (self as NSString).pathExtension
    }
    
    var deletingLastPathComponent: String {
        return (self as NSString).deletingLastPathComponent
    }
    
    var deletingPathExtension: String {
        return (self as NSString).deletingPathExtension
    }
    
    var pathComponents: [String] {
        return (self as NSString).pathComponents
    }
    
    func appendingPathComponent(_ str: String) -> String {
        return (self as NSString).appendingPathComponent(str)
    }
    
    func appendingPathExtension(_ str: String) -> String? {
        return (self as NSString).appendingPathExtension(str)
    }
    
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
	return input.rawValue
}
