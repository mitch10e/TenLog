//
//  TenLogSettings.swift
//  TenLog
//
//  Created by Mitchell Tenney on 10/7/16.
//  Copyright © 2016 Mitchell Tenney. All rights reserved.
//

import Foundation

enum TenLogAlignment {
    case left
    case right
}

class TenLogSettings {
    
    static let shared: TenLogSettings = TenLogSettings()
    
    // Max length before separator
    var tagSize: Int = 7 {
        didSet {
            if tagSize < defaultTag.characters.count {
                tagSize = defaultTag.characters.count
                debug("tagSize smaller than default tag. tagSize overriding to \(tagSize)")
            }
        }
    }
    
    // If no tag is specified, print defaultTag
    var defaultTag: String = "DEBUG" {
        didSet {
            if defaultTag.characters.count > TenLogSettings.shared.tagSize {
                TenLogSettings.setTagSize(defaultTag.characters.count)
            }
        }
    }
    
    // Tag Alignment before separator
    var alignment: TenLogAlignment = .left
    
    // Charachter to show end of multiline print
    var endMultiLineCharacter: Character = "ˇ"
    
    // String to separate tag from print items
    var separator: String = "| "
    
    // Should uppercase tag
    var shouldUppercase: Bool = true
    
    // Private init - Singleton
    private init() {}
    
    // Setters to avoid having to type - For convenience
    // TenLogSettings.shared.value = newValue
    // TenLogSettings.setValue(newValue)
    
    static func setTagSize(_ length: Int) {
        TenLogSettings.shared.tagSize = length
    }
    
    static func setDefaultTag(_ tag: String) {
        TenLogSettings.shared.defaultTag = tag
    }
    
    static func setAlignment(_ alignment: TenLogAlignment) {
        TenLogSettings.shared.alignment = alignment
    }
    
    static func setEndMultiLineCharacter(_ char: Character) {
        TenLogSettings.shared.endMultiLineCharacter = char
    }
    
    static func setSeparator(_ separator: String) {
        TenLogSettings.shared.separator = separator
    }
    
    static func setShouldUppercase(_ uppercase: Bool) {
        TenLogSettings.shared.shouldUppercase = uppercase
    }
}
