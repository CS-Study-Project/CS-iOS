//
//  AuthViewController.swift
//  ITy
//
//  Created by 천성우 on 9/10/24.
//


import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class AuthViewController: BaseViewController {
    
    
    private let viewModel = AuthViewModel()
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let authTitleView = AuthTitleView()
    
    // MARK: - Properties
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .white000
    }
    
    override func setLayout() {
        view.addSubviews(authTitleView)
        
        authTitleView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 222 / 812)
        }
    }
    
    
}


