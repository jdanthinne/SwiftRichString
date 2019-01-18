//
//  DynamicTextSize.swift
//  SwiftRichString-iOS
//
//  Created by Felipe Lefèvre Marino on 1/17/19.
//  Copyright © 2019 SwiftRichString. All rights reserved.
//

import UIKit

/// DynamicTextSize encapsulate the attributes to setup the fonts to automatically scale to match the current Dynamic Type settings.
public class DynamicTextSize {
    
    /// Set the dynamic size text style.
    /// You can pass any `UIFont.TextStyle` value, if nil UIFontMetrics.default will be used,
    /// which uses the body text style
    public var textStyle: UIFont.TextStyle?
    
    #if os(OSX) || os(iOS) || os(tvOS)
    /// Set the trait collection which the dynamic size is compatbile with
    /// The trait collection to use when determining compatibility. The returned
    /// font is appropriate for use in an interface that adopts the specified traits.
    public var traitCollection: UITraitCollection?
    #endif
    
    /// Set the maximum font/text size
    /// allowed for the font/text. Use this value to constrain the font to
    /// the specified size when your interface cannot accommodate text that is any larger.
    public var maximumSize: CGFloat?
    
    public typealias InitHandler = ((DynamicTextSize) -> (Void))
    
    //MARK: - INIT
    
    /// Initialize a new dynamic text size with optional configuration handler callback.
    ///
    /// - Parameter handler: configuration handler callback.
    public init(_ handler: InitHandler? = nil) {
        handler?(self)
    }
}
