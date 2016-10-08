//
//  TenLog.swift
//  TenLog
//
//  Created by Mitchell Tenney on 10/7/16.
//  Copyright © 2016 Mitchell Tenney. All rights reserved.
//

import Foundation

/**
 The core of the TenLog library. debug() can be used exactly as the print() function. Acts as a pretty print function.
 - Parameter items: What to print out
 - Parameter tag: Override the default tag
 */

public func debug(_ items: Any..., tag: String = "\(TenLogSettings.shared.defaultTag)") {
    if shouldPrint(tag) {
        for item in items {
            print("\(normalize(tag))\(TenLogSettings.shared.separator)\(normalize(item))")
        }
    }
}

fileprivate func shouldPrint(_ tag: String) -> Bool {
    var shouldPrint = true
    if !TenLogSettings.shared.enabled {
        shouldPrint = false
    }
    if TenLogSettings.shared.disabledTags.contains(tag.uppercased()) {
        shouldPrint = false
    }    
    return shouldPrint
}

fileprivate func normalize(_ item: Any) -> String {
    var value = "\(item)"
    if value.contains("\n") {
        let spaces = String(repeating: " ", count: TenLogSettings.shared.tagSize)
        value = value.replacingOccurrences(of: "\n", with: "\n\(spaces)\(TenLogSettings.shared.separator)")
        value += "\n\(getSpaces(TenLogSettings.shared.tagSize))\(TenLogSettings.shared.endMultiLineCharacter)"
    }
    return value
}

fileprivate func normalize(_ tag: String) -> String {
    var normalizedTag = (String(tag.characters.prefix(TenLogSettings.shared.tagSize)))
    let spaceLeft = TenLogSettings.shared.tagSize - normalizedTag.characters.count
    let spaces = getSpaces(spaceLeft)
    
    if TenLogSettings.shared.alignment == .left {
        normalizedTag = normalizedTag + spaces
    } else {
        normalizedTag = spaces + normalizedTag
    }
    if TenLogSettings.shared.shouldUppercase {
        normalizedTag = normalizedTag.uppercased()
    }
    return normalizedTag
}

fileprivate func getSpaces(_ count: Int) -> String {
    return String(repeating: " ", count: count)
}
