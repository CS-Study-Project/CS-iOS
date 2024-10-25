//
//  CheckView.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit

class CheckView: BaseView {
    
    // MARK: - UI Components Property
    
    private let monLabel = DayLabel(frame: .zero, dayString: "MON")
    private let wedLabel = DayLabel(frame: .zero, dayString: "WEB")
    private let friLabel = DayLabel(frame: .zero, dayString: "FRI")
    private let sunLabel = DayLabel(frame: .zero, dayString: "SUN")
    lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
    }
    
    // MARK: - Layout Helper
    
    override func setLayout() {
        addSubviews(monLabel, wedLabel, friLabel, sunLabel, collectionView)
        
        monLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 40 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 35 / 375)
        }
        
        wedLabel.snp.makeConstraints {
            $0.top.equalTo(monLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 30 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 35 / 375)
        }
        
        friLabel.snp.makeConstraints {
            $0.top.equalTo(wedLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 27 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 35 / 375)
        }
        
        sunLabel.snp.makeConstraints {
            $0.top.equalTo(friLabel.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 30 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 35 / 375)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 39 / 812)
            $0.leading.equalTo(monLabel.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 25 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 235 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 144 / 812)
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

