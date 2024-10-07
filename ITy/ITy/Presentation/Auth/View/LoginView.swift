//
//  LoginView.swift
//  ITy
//
//  Created by 천성우 on 9/10/24.
//

import UIKit

import Then
import SnapKit

class LoginView: BaseView {
    
    // MARK: - UI Components Property
    
    private let loginLabel = UILabel()
    private let idTextField = UnderlineTextField(frame: .zero, placeholderString: "아이디를 입력해주세요")
    private let pwTextField = UnderlineTextField(frame: .zero, placeholderString: "비밀번호를 입력해주세요")
    private let continueButton = UIButton()
    private let signUpButton = UIButton()
    
    override func setStyles() {
        backgroundColor = .white000
        
        loginLabel.do {
            $0.text = "먼저 로그인이 필요해요 :)"
            $0.textColor = .gray30
            $0.font = .fontGuide(.detail2_reg)
        }
        
        pwTextField.do {
            $0.setPasswordMode()
        }
        
        continueButton.do {
            $0.setTitle("계속", for: .normal)
            $0.setTitleColor(.gray50, for: .normal)
            $0.titleLabel?.font = .fontGuide(.head4)
            $0.layer.cornerRadius = 5
            $0.layer.borderWidth = 1
            $0.layer.borderColor = UIColor.gray30.cgColor
        }
        
        signUpButton.do {
            $0.setTitle("회원가입", for: .normal)
            $0.setTitleColor(.gray50, for: .normal)
            $0.titleLabel?.font = .fontGuide(.detail2_reg)
        }

    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(loginLabel, idTextField, pwTextField, continueButton, signUpButton)
        
        loginLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 26 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 30 / 375)
        }
        
        idTextField.snp.makeConstraints {
            $0.top.equalTo(loginLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 10 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 26 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 29 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 323 / 375)
        }
        
        pwTextField.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 16 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 26 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 29 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 323 / 375)
        }
        
        continueButton.snp.makeConstraints {
            $0.top.equalTo(pwTextField.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 28 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 26 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 41 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 323 / 375)
        }
        
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(continueButton.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 12 / 812)
            $0.trailing.equalToSuperview().offset(-SizeLiterals.Screen.screenWidth * 26 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 15 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 43 / 375)
        }
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
