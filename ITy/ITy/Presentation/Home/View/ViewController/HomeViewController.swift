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
    
    
    // MARK: - Properties
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
    }
    
    override func setLayout() {}
    
    
}


