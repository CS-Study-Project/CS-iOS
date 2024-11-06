//
//  ComputerscienceReviewViewController.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class ComputerscienceAnswerViewController: BaseViewController {
    
    
    private let viewModel: ComputerscienceViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let answerUI = AnswerView()
    
    
    // MARK: - Properties
    
    init(viewModel: ComputerscienceViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
    }
    
    override func setLayout() {
        view.addSubviews(answerUI)
        
        answerUI.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 39 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 337 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 250 / 812)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
