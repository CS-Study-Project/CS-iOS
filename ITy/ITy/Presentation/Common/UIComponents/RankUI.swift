//
//  RankUI.swift
//  ITy
//
//  Created by 천성우 on 9/12/24.
//


import UIKit

import Then
import SnapKit

class RankUI: BaseView {
    
    // MARK: - UI Components Property
    
    private let rankPlace = UIImageView()
    private let rankLabel = UILabel()
        
    init(frame: CGRect, rankImage: UIImage) {
        rankPlace.image = rankImage
        super.init(frame: frame)
    }
    
    override func setStyles() {
        
        rankLabel.do {
            $0.font = .fontGuide(.head3)
            $0.textColor = .black000
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(rankPlace, rankLabel)
        
        rankPlace.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 14 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 23 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 33 / 812)
        }
        
        rankLabel.snp.makeConstraints {
            $0.leading.equalTo(rankPlace.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 18 / 375)
            $0.centerY.equalTo(rankPlace)
        }
    }
    
    // MARK: - Methods
    
    func setRankLabel(rankString: String) {
        rankLabel.text = rankString
    }
    
    // MARK: - @objc Methods

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
