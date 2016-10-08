//
//  TenLogSettings.swift
//  TenLog
//
//  Created by Mitchell Tenney on 10/7/16.
//  Copyright © 2016 Mitchell Tenney. All rights reserved.
//

import Foundation

public enum TenLogAlignment {
    case left
    case right
}


public class TenLogSettings {
    
    // Private init - Singleton
    private init() {}
    static let shared: TenLogSettings = TenLogSettings()
    
    
    // MARK: Internal values for settings
    
    var tagSize: Int = 7 {
        didSet {
            if tagSize < defaultTag.characters.count {
                tagSize = defaultTag.characters.count
                debug("tagSize smaller than default tag. tagSize overriding to \(tagSize)")
            }
        }
    }
    
    var defaultTag: String = "DEBUG" {
        didSet {
            if defaultTag.characters.count > TenLogSettings.shared.tagSize {
                TenLogSettings.setTagSize(defaultTag.characters.count)
            }
        }
    }
    
    var enabled: Bool = true
    var alignment: TenLogAlignment = .left
    var endMultiLineCharacter: Character = "ˇ"
    var separator: String = "| "
    var shouldUppercase: Bool = true
    var disabledTags: Set<String> = []
    
    
    
    // MARK: Public API
    
    /**
     Enable debug() print statements
     */
    
    public static func enable() {
        TenLogSettings.shared.enabled = true
    }
    
    /**
     Enables a tag that has been previously disabled. Will uppercase tag to remove automagically.
     - Parameter tag: The tag to enable
     */
    
    public static func enable(tag: String) {
        TenLogSettings.shared.disabledTags.remove(tag.uppercased())
    }
    
    /**
     Disable debug() print statements
     */
    
    public static func disable() {
        TenLogSettings.shared.enabled = false
    }
    
    /**
     Disables a tag from being printed via debug(). Stored as uppercased().
     - Parameter tag: The tag to disable
     */
    
    public static func disable(tag: String) {
        TenLogSettings.shared.disabledTags.insert(tag.uppercased())
    }
    
    /**
     Get a list of all tags currently disabled
     */
    
    public static func getDisabledTags() -> Set<String> {
        return TenLogSettings.shared.disabledTags
    }
    
    /**
     Pass in a set of tags to disable
     - Parameter tags: List of tags to add to disabled tag set
     */
    
    public static func disable(tags: [String])  {
        for tag in tags {
            TenLogSettings.shared.disabledTags.insert(tag)
        }
    }
    
    /**
     Enables all tags
     */
    
    public static func enableAllTags() {
        TenLogSettings.shared.disabledTags.removeAll()
    }
    
    /**
     Sets the number of characters that should come before the separator
     - Parameter size: The size of the tag. Defaults to 7
     */
    
    public static func setTagSize(_ size: Int) {
        TenLogSettings.shared.tagSize = size
    }
    
    /**
     Sets the default string to use when no tag is specified in debug(). Will automatically update the tag size to the length of the default tag if tagSize is smaller than the tag passed in.
     - Parameter tag: The default string to use as a tag. Defaults to DEBUG
     */
    
    public static func setDefaultTag(_ tag: String) {
        TenLogSettings.shared.defaultTag = tag
    }
    
    /**
     Sets the tag to be left or right aligned. Use TenLogAlignment{ .left, .right }
     - Parameter alignment: Text alignment to use for tags in debug(). Defaults to .left
     */
    
    public static func setAlignment(_ alignment: TenLogAlignment) {
        TenLogSettings.shared.alignment = alignment
    }
    
    /**
     When multiline values with \\n are passed into debug() an extra line is created with this character to help define end of statement.
     - Parameter char: The character to use as end of line. Defaults to ˇ
     */
    
    public static func setEndMultiLineCharacter(_ char: Character) {
        TenLogSettings.shared.endMultiLineCharacter = char
    }
    
    /**
     A separator is used to help divide tags from items being printed. Use this to change to something else. Common options to change to are empty string or a character that lines up well.
     - Parameter separator: The string to use to separate the tag from the items. Defaults to "| "
     */
    
    public static func setSeparator(_ separator: String) {
        TenLogSettings.shared.separator = separator
    }
    
    /**
     For the more lazy out there, this will tell the tags to always uppercased() the tag, even if "debug" is set as the tag.
     - Parameter uppercase: Defaults to true
     */
    
    public static func setShouldUppercase(_ uppercase: Bool) {
        TenLogSettings.shared.shouldUppercase = uppercase
    }
}
