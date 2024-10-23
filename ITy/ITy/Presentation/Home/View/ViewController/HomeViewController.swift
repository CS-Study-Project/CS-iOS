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
    
    
    private let viewModel: HomeViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let profileView = ProfileView()
    private let topicView = TopicView()
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: - Properties
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
    }
    
    override func setLayout() {
        view.addSubviews(profileView, topicView)
        
        profileView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 118 / 812)
        }
        
        topicView.snp.makeConstraints {
            $0.top.equalTo(profileView.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 10 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 163 / 812)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


