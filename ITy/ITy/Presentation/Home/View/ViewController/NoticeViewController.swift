//
//  NoticeViewController.swift
//  ITy
//
//  Created by 천성우 on 9/10/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class NoticeViewController: BaseViewController {
    
    
    private let viewModel: HomeViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let customNavigationView = CustomNavigationView()
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: - Properties
    
    override func bindViewModel() {
        customNavigationView.rxBackButtonTapControl
            .bind { [weak self] in
                self?.navigationController?.popViewController(animated: true)
            }
            .disposed(by: disposeBag)
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
        
        customNavigationView.do {
            $0.setTitle(with: "알림")
        }
    }
    
    override func setLayout() {
        view.addSubviews(customNavigationView)
        
        customNavigationView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 140 / 812)
        }
    }
    
    deinit {
        print("🧶 is deinited")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
