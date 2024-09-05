//
//  TopicView.swift
//  ITy
//
//  Created by 천성우 on 9/5/24.
//

import UIKit

import Then
import SnapKit

class TopicView: BaseView {
    
    // MARK: - UI Components Property
    
    private let todayCSLabel = UILabel()
    private let topicLabel = UILabel()
    private let shareButton = UIButton()
    
    private let topic = "메모리 누수"
    
    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
        todayCSLabel.do {
            $0.text = "오늘의 CS주제"
            $0.font = .fontGuide(.head4)
            $0.textColor = .black000
        }
        
        topicLabel.do {
            $0.text = "\(topic)"
            $0.font = .fontGuide(.topic)
            $0.textColor = .black000
        }
        
        shareButton.do {
            $0.setTitle("지식 공유하기", for: .normal)
            $0.setTitleColor(.white000, for: .normal)
            $0.titleLabel?.font = .fontGuide(.head3)
            $0.layer.cornerRadius = 15
            $0.backgroundColor = .blue100
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(todayCSLabel, topicLabel, shareButton)
        
        todayCSLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 13 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 10 / 375)
        }

        topicLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 50 / 812)
            $0.centerX.equalToSuperview()
        }
        
        shareButton.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 10 / 375)
            $0.bottom.equalToSuperview().offset(-SizeLiterals.Screen.screenHeight * 15 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 315 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 44 / 812)
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
