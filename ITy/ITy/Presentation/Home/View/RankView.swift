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
    private let firstPlace = RankUI(frame: .zero, rankString: "허지영", rankImage: ImageLiterals.Rank.rank_firstPlace)
    
    private let titleString: String
    
    init(frame: CGRect, titleString: String) {
        self.titleString = titleString
        super.init(frame: frame)
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
        addSubviews(titleLabel, firstPlace)
        
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
    }
    
    // MARK: - Methods
    
    private func setAddTarget() {}
    
    // MARK: - @objc Methods

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
