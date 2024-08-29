//
//  UITabBar+.swift
//  ITy
//
//  Created by 천성우 on 8/29/24.
//

import UIKit

extension UITabBar {
    static func clearShadow() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.white
    }
}
