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
    public static func image() -> UIImage? {
        UIImage(named: "bernie_meme.png", in: Bundle.module, compatibleWith: nil)
    }
}

#endif

extension FileManager {
    func copyfileToUserDocumentDirectory(forResource name: String,
                                         ofType ext: String) throws
    {
        if let bundlePath = Bundle.main.path(forResource: name, ofType: ext),
            let destPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,
                                .userDomainMask,
                                true).first {
            let fileName = "\(name).\(ext)"
            let fullDestPath = URL(fileURLWithPath: destPath)
                                   .appendingPathComponent(fileName)
            let fullDestPathString = fullDestPath.path

            if !self.fileExists(atPath: fullDestPathString) {
                try self.copyItem(atPath: bundlePath, toPath: fullDestPathString)
            }
        }
    }
}
