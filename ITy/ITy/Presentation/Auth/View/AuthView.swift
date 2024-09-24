//
//  AuthView.swift
//  ITy
//
//  Created by 천성우 on 9/23/24.
//

import UIKit

import Then
import SnapKit

class AuthView: BaseView {
    
    // MARK: - UI Components Property
    
    
    
    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16

    }

    // MARK: - Layout Helper

    override func setLayout() {
//        addSubviews()
        
    }
    
    // MARK: - Methods
    
    private func setAddTarget() {}
    
    // MARK: - @objc Methods
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
