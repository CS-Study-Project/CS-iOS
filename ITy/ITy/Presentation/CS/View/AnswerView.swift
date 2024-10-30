//
//  AnswerView.swift
//  ITy
//
//  Created by 천성우 on 10/30/24.
//

import UIKit

import Then
import SnapKit

class AnswerView: BaseView {
    
    // MARK: - UI Components Property
    
    private let topLabel = UILabel()
    private let userImage = UIImageView()
    private let userName = UILabel()
    private let userSkill = UILabel()
    private let dayLabel = UILabel()
    private let answerView = UITextView()
    private let verticalWall = UIView()
    private let horizontalWall = UIView()
    private let hartButton = UIButton()
    private let hartCountLabel = UILabel()
    private let commentButton = UIButton()
    private let commentCountLabel = UILabel()

    
    
    
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
        topLabel.do {
            $0.text = "🔥 가장 많은 좋아요를 받은 답변이에요!"
            $0.font = .fontGuide(.head4)
            $0.textColor = .black000
        }

        userImage.do {
            $0.image = ImageLiterals.Comment.userImage_ic
        }
        
        userName.do {
            $0.font = .fontGuide(.detail2_bold)
            $0.textColor = .black000
            $0.text = "임시"
        }
        
        userSkill.do {
            $0.font = .fontGuide(.detail2_bold)
            $0.textColor = .blue200
            $0.text = "임시"
        }
        
        dayLabel.do {
            $0.font = .fontGuide(.detail2_bold)
            $0.textColor = .black000
            $0.text = "2024.13.30 17:29"
        }
        
        answerView.do {
            $0.font = .fontGuide(.detail2_bold)
            $0.textColor = .black000
            $0.backgroundColor = .clear
            $0.showsVerticalScrollIndicator = false
            $0.text = "CS는 'Computer Science'의 약자로, 컴퓨터 과학을 의미합니다. 컴퓨터 과학은 컴퓨터 및 컴퓨터 시스템의 이론, 설계, 개발 및 응용에 관한 학문 분야입니다. 컴퓨터 과학은 컴퓨터와 관련된 여러 가지 주제를 포함하며, 소프트웨어, 하드웨어, 알고리즘, 데이터 구조, 네트워킹, 데이터베이스, 인공지능, 컴퓨터 그래픽스 등에 대한 이론과 실제적인 측면을 다룹니다."
        }
        
        verticalWall.do {
            $0.backgroundColor = .gray40
        }
        
        horizontalWall.do {
            $0.backgroundColor = .gray40
        }
        
        hartButton.do {
            $0.setImage(ImageLiterals.Comment.hart_off_ic, for: .normal)
        }
        
        hartCountLabel.do {
            $0.font = .fontGuide(.detail2_bold)
            $0.textColor = .gray50
            $0.text = "7"
        }
        
        commentButton.do {
            $0.setImage(ImageLiterals.Comment.comment_ic, for: .normal)
        }
        
        commentCountLabel.do {
            $0.font = .fontGuide(.detail2_bold)
            $0.textColor = .gray50
            $0.text = "1"
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(userImage, userName, userSkill,
                    dayLabel, answerView, verticalWall,
                    horizontalWall, hartButton, hartCountLabel,
                    commentButton, commentCountLabel)
        
        userImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 18 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 16 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 35 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 35 / 812)
        }
        
        userName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 17 / 812)
            $0.leading.equalTo(userImage.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 7 / 375)
        }
        
        userSkill.snp.makeConstraints {
            $0.top.equalTo(userName.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 3 / 812)
            $0.leading.equalTo(userImage.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 7 / 375)
        }
        
        dayLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 36 / 812)
            $0.trailing.equalToSuperview().offset(-SizeLiterals.Screen.screenWidth * 13 / 375)
        }
        
        answerView.snp.makeConstraints {
            $0.top.equalTo(userImage.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 17 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 299 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 132 / 812)
        }
        
        verticalWall.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalTo(1)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 45 / 812)
        }
        
        horizontalWall.snp.makeConstraints {
            $0.top.equalTo(verticalWall.snp.top)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        hartButton.snp.makeConstraints {
            $0.top.equalTo(horizontalWall.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 5 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 74 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 20 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 20 / 812)
        }
        
        hartCountLabel.snp.makeConstraints {
            $0.top.equalTo(hartButton.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 5 / 812)
            $0.centerX.equalTo(hartButton.snp.centerX)
        }
        
        commentButton.snp.makeConstraints {
            $0.top.equalTo(horizontalWall.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 5 / 812)
            $0.trailing.equalToSuperview().offset(-SizeLiterals.Screen.screenWidth * 74 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 20 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 20 / 812)
        }
        
        commentCountLabel.snp.makeConstraints {
            $0.top.equalTo(commentButton.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 5 / 812)
            $0.centerX.equalTo(commentButton.snp.centerX)
        }
        
    }

    // MARK: - Methods

}
