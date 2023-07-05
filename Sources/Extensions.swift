//
//  Extensions.swift
//  XLPagerTabStrip
//
//  Created by taeHyeongKim on 2023/07/05.
//

import Foundation

extension Array {
    subscript(guarded index: Int) -> Element? {
        get {
            if indices.contains(index) {
                return self[index]
            } else {
                return nil
            }
        }
        set {
            guard indices.contains(index) else {
                return
            }
            if let newValue = newValue {
                self[index] = newValue
            }
        }
    }
}
