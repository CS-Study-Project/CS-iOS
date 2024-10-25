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
    
    
    private let viewModel: HomeViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let todayRecommendation = RankView(frame: .zero, titleString: "오늘의 추천순위예요", firstRankName: "허허", secondRankName: "허허", thirdRankName: "허허")
    private let teamProject = RankView(frame: .zero, titleString: "찜이 가장 많은 팀 프로젝트예요", firstRankName: "허몽구키우기", secondRankName: "허몽구키우기", thirdRankName: "허몽구키우기")
    private let csUser = RankView(frame: .zero, titleString: "찜이 가장 많은 팀 프로젝트예요", firstRankName: "허몽구키우기", secondRankName: "허몽구키우기", thirdRankName: "허몽구키우기")
    
    // MARK: - Properties
    
    override var isNavigationBarHidden: Bool { true }
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func bindViewModel() {
        view.backgroundColor = .gray10
    }
    
    override func setStyles() {
        
    }
    
    override func setLayout() {
        view.addSubviews(todayRecommendation, teamProject, csUser)
        
        todayRecommendation.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 13 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 344 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 170 / 812)
        }
        
        teamProject.snp.makeConstraints {
            $0.top.equalTo(todayRecommendation.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 26 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 344 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 170 / 812)
        }
        
        csUser.snp.makeConstraints {
            $0.top.equalTo(teamProject.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 26 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 15 / 375)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 344 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 170 / 812)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
