//
//  ProfileView.swift
//  ITy
//
//  Created by 천성우 on 9/2/24.
//

import UIKit

import Then
import SnapKit

class ProfileView: BaseView {
    
    // MARK: - UI Components Property
    
    private let imageView = UIImageView()
    private let nameLabel = UILabel()
    private let shareLabel = UILabel()
    
    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
        imageView.do {
            $0.image = ImageLiterals.Home.home_profile
        }
        
        nameLabel.do {
            $0.text = "허몽구님 반가워요!"
            $0.textColor = .black000
            $0.font = .fontGuide(.head4)
        }
        
        shareLabel.do {
            $0.text = "ITy에서 ?개의 지식을 공유했어요"
            $0.textColor = .black000
            $0.font = .fontGuide(.body2_reg)
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(imageView, nameLabel, shareLabel)
        
        imageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 18.33 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 8 / 375)
            $0.width.height.equalTo(SizeLiterals.Screen.screenWidth * 83.33 / 375)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 30 / 812)
            $0.leading.equalTo(imageView.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 14.33 / 375)
        }
        
        shareLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 9 / 812)
            $0.leading.equalTo(imageView.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 14.33 / 375)
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
