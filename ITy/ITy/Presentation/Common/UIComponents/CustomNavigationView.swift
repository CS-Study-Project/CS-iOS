//
//  customNavigationView.swift
//  ITy
//
//  Created by 천성우 on 10/23/24.
//

import UIKit

import RxCocoa
import RxSwift

class CustomNavigationView: BaseView {

    
    // MARK: - UI Properties
    private let backButton = UIButton()
    private let titleLabel = UILabel()

    lazy var rxBackButtonTapControl: ControlEvent<Void> = backButton.rx.tap
    
    // MARK: - Styles
    override func setStyles() {
        backgroundColor = .clear
        
        backButton.do {
            $0.setImage(ImageLiterals.navigation.navigation_back, for: .normal)
            $0.contentMode = .scaleAspectFit
        }
        
        titleLabel.do {
            $0.font = .fontGuide(.head4)
            $0.textColor = .black000
        }
    }
    
    // MARK: - Layout
    override func setLayout() {
        addSubviews(backButton, titleLabel)
        
        backButton.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(SizeLiterals.Screen.screenWidth * 8 / 375)
            $0.centerY.equalToSuperview()
            $0.height.equalTo(SizeLiterals.Screen.screenWidth * 48 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 48 / 375)
        }
        
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}

extension CustomNavigationView {
    func setTitle(with title: String) {
        titleLabel.text = title
    }
}
