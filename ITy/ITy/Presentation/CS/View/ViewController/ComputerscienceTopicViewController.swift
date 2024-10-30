//
//  ComputerscienceTopixViewController.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class ComputerscienceTopicViewController: BaseViewController {
    
    
    private let viewModel: ComputerscienceViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let topicView = ComputerscienceTopixView(frame: .zero, topixString: "메모리 누수")
    private let anserView = TopicAnserView()
    
    
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
        view.addSubviews(topicView, anserView)
        
        topicView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 39 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 120 / 812)
        }
        
        anserView.snp.makeConstraints {
            $0.top.equalTo(topicView.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 69 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 383 / 812)
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

