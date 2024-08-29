//
//  UIView+.swift
//  ITy
//
//  Created by 천성우 on 8/29/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
