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
    
    private let profileView = ProfileView()
    private let topicView = TopicView()
    
    
    // MARK: - Properties
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
    }
    
    override func setLayout() {}
    
    
}


