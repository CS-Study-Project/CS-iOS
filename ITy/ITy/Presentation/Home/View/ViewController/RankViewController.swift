//
//  RankViewController.swift
//  ITy
//
//  Created by 천성우 on 9/3/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class RankViewController: BaseViewController {
    
    
    private let viewModel = HomeViewModel()
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let todayRecommendation = RankView(frame: .zero, titleString: "오늘의 추천순위예요", firstRankName: "허허", secondRankName: "허허", thirdRankName: "허허")
    
    // MARK: - Properties
    
    override func bindViewModel() {
        view.backgroundColor = .gray10
    }
    
    override func setStyles() {
        
    }
    
    override func setLayout() {
        view.addSubviews(todayRecommendation)
        
        todayRecommendation.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 13 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 344 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 170 / 812)
            
        }
    }
    
    
}
