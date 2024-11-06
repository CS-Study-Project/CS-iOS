//
//  RankView.swift
//  ITy
//
//  Created by 천성우 on 9/8/24.
//


import UIKit

import Then
import SnapKit

class RankView: BaseView {
    
    // MARK: - UI Components Property
    
    private let titleLabel = UILabel()
    private let firstPlace = RankUI(frame: .zero, rankImage: ImageLiterals.Rank.rank_firstPlace)
    private let secondPlace = RankUI(frame: .zero, rankImage: ImageLiterals.Rank.rank_secondPlace)
    private let thirdPlace = RankUI(frame: .zero, rankImage: ImageLiterals.Rank.rank_thirdPlace)

    private let titleString: String
    private let firstRankName: String
    private let secondRankName: String
    private let thirdRankName: String
    
    init(frame: CGRect, titleString: String, firstRankName: String, secondRankName: String, thirdRankName: String) {
        self.titleString = titleString
        self.firstRankName = firstRankName
        self.secondRankName = secondRankName
        self.thirdRankName = thirdRankName
        super.init(frame: frame)
        self.setRanking()
    }
    
    override func setStyles() {
        layer.cornerRadius = 16
        backgroundColor = .white000
        
        titleLabel.do {
            $0.text = titleString
            $0.font = .fontGuide(.head4)
            $0.textColor = .black000
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(titleLabel, firstPlace, secondPlace, thirdPlace)
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 12 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 11 / 375)
        }
        
        firstPlace.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 8 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 33 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 93 / 375)
        }
        
        secondPlace.snp.makeConstraints {
            $0.top.equalTo(firstPlace.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 9 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 33 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 93 / 375)
        }
        
        thirdPlace.snp.makeConstraints {
            $0.top.equalTo(secondPlace.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 9 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 33 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 93 / 375)
        }
    }
    
    // MARK: - Methods
        
    private func setRanking() {
        firstPlace.setRankLabel(rankString: firstRankName)
        secondPlace.setRankLabel(rankString: secondRankName)
        thirdPlace.setRankLabel(rankString: thirdRankName)
    }
    
    // MARK: - @objc Methods

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
