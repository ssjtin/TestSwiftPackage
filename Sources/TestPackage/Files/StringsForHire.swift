//
//  File.swift
//  
//
//  Created by Hoang Luong on 30/1/21.
//

import Foundation
#if !os(macOS)
import UIKit

public struct StringsForHire {
    public static let instrument = "Violin 4/4"
    public func image() -> UIImage? {
        UIImage(named: "bernie_meme.png", in: Bundle.module, compatibleWith: nil)
    }
}

#endif
