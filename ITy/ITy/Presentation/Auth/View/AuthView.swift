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
    
    
    private let authViewTitle = UILabel()
    private let leftLine = UIView()
    private let rightLine = UIView()
    private let kakaoLoginButton = UIButton()
    private let appleLoginButton = UIButton()
    
    
    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
        authViewTitle.do {
            $0.text = "간편 로그인"
            $0.textColor = .gray30
            $0.font = .fontGuide(.detail2_reg)
        }
        
        leftLine.do {
            $0.backgroundColor = .gray30
        }
        
        rightLine.do {
            $0.backgroundColor = .gray30
        }
        
        kakaoLoginButton.do {
            $0.setImage(ImageLiterals.Auth.kakaoLogin_btn, for: .normal)
            $0.layer.cornerRadius = 5
        }
        
        appleLoginButton.do {
            $0.setImage(ImageLiterals.Auth.appleLogin_btn, for: .normal)
            $0.layer.cornerRadius = 5
        }

    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(authViewTitle, leftLine, rightLine, kakaoLoginButton, appleLoginButton)

        
        
        leftLine.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 20 / 375)
            $0.centerY.equalTo(authViewTitle.snp.centerY)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 130 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 0.5 / 812)
        }
        
        authViewTitle.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 13 / 375)
            $0.centerX.equalToSuperview()
        }
        
        rightLine.snp.makeConstraints {
            $0.leading.equalTo(authViewTitle.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 8 / 375)
            $0.centerY.equalTo(authViewTitle.snp.centerY)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 130 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 0.5 / 812)
        }
        
        appleLoginButton.snp.makeConstraints {
            $0.top.equalTo(authViewTitle.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 42 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15.75 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 343 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 50 / 812)
        }
        
        kakaoLoginButton.snp.makeConstraints {
            $0.top.equalTo(appleLoginButton.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 17 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15.75 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 343 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 50 / 812)
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
