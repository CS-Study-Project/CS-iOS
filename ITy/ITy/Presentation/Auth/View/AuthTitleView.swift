//
//  AuthTitleView.swift
//  ITy
//
//  Created by 천성우 on 9/23/24.
//

import UIKit

import Then
import SnapKit

class AuthTitleView: BaseView {
    
    // MARK: - UI Components Property
    
    private let subLabel = UILabel()
    private let titleLabel = UILabel()
    
    override func setStyles() {
        backgroundColor = .white000
        
        subLabel.do {
            $0.text = "당신의 지식을 다른 사람들과 공유해요"
            $0.textColor = .black000
            $0.font = .fontGuide(.body1_reg)
        }
        
        titleLabel.do {
            $0.text = "대충 팀 프로젝트도 여기서 쉽게하면\n더 성장 할 수 있단 말"
            $0.textColor = .black000
            $0.font = .fontGuide(.head4)
            $0.numberOfLines = 2
        }

    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(subLabel, titleLabel)
        
        subLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 103 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 37 / 375)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(subLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 40 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 37 / 375)
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
