//
//  AuthView.swift
//  ITy
//
//  Created by 천성우 on 9/10/24.
//

import UIKit

import Then
import SnapKit

class AuthView: BaseView {
    
    // MARK: - UI Components Property
    
    private let loginLabel = UILabel()
    private let idTextField = UITextField()
    private let pwTextField = UITextField()
    private let continueButton = UIButton()
    private let signUpButton = UIButton()
    
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
