//
//  HomeViewController.swift
//  ITy
//
//  Created by 천성우 on 9/2/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class HomeViewController: BaseViewController {
    
    
    private let viewModel = HomeViewModel()
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let profileView = ProfileView()
    
    
    // MARK: - Properties
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
    }
    
    override func setLayout() {
        view.addSubviews(profileView)
        
        profileView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 151 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 118 / 812)
        }
    }
    
    
}


