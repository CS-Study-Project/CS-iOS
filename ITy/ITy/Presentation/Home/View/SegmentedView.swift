//
//  SegmentedView.swift
//  ITy
//
//  Created by 천성우 on 9/8/24.
//

import UIKit

import Then
import SnapKit

protocol MainViewSegmentDelegate: AnyObject {
    func movePage(to index: Int)
}

class SegmentedView: BaseView {
    
    // MARK: - UI Components Property
    
    lazy var homeButton = UIButton(frame: .zero, primaryAction: moveToHome())
    lazy var rankButton = UIButton(frame: .zero, primaryAction: moveToRank())
    private var noticeButton = UIButton()
    
    private var selectedIndex: Int = 0
    weak var delegate: MainViewSegmentDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setAddTarget()
    }
    
    override func setStyles() {
        
        homeButton.do {
            $0.setTitle("홈", for: .normal)
            $0.titleLabel?.font = .fontGuide(.head1)
            $0.setTitleColor(.black000, for: .normal)
        }
        
        rankButton.do {
            $0.setTitle("랭킹", for: .normal)
            $0.titleLabel?.font = .fontGuide(.head1)
            $0.setTitleColor(.gray30, for: .normal)
        }
        
        noticeButton.do {
            $0.setImage(ImageLiterals.Home.home_notice, for: .normal)
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        self.addSubviews(homeButton, rankButton, noticeButton)
        
        homeButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 6 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 16 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 29 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 21 / 375)
        }
        
        rankButton.snp.makeConstraints {
            $0.top.equalTo(homeButton.snp.top)
            $0.leading.equalTo(homeButton.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 17 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 29 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 42 / 375)
        }
        
        noticeButton.snp.makeConstraints {
            $0.top.equalTo(rankButton.snp.top).offset(SizeLiterals.Screen.screenHeight * 4 / 812)
            $0.trailing.equalToSuperview().offset(-SizeLiterals.Screen.screenWidth * 14 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 20 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 16 / 375)
        }
    }
    
    private func setAddTarget() {
        noticeButton.addTarget(self, action: #selector(pushToNoticeViewController), for: .touchUpInside)
    }
    
    // MARK: - Methods
    
    
    // index가 0일 땐 home, index가 1일 땐 rank
    func updateButton(index: Int) {
        switch index {
        case 0:
            homeButton.setTitleColor(.gray30, for: .normal)
            rankButton.setTitleColor(.black000, for: .normal)
            selectedIndex = 1
        case 1:
            homeButton.setTitleColor(.black000, for: .normal)
            rankButton.setTitleColor(.gray30, for: .normal)
            selectedIndex = 0
        default:
            break
        }
    }
    
    private func moveToRank() -> UIAction? {
        let action = UIAction(handler: { [weak self] _ in
            guard let index = self?.selectedIndex else { return }
            
            if index == 1 {
                return
            }
            print("moveToRank")
            print("\(index)")
            self?.updateButton(index: index)
            self?.delegate?.movePage(to: index)
        })
        return action
    }
    
    private func moveToHome() -> UIAction? {
        let action = UIAction(handler: { [weak self] _ in
            guard let index = self?.selectedIndex else { return }
            
            if index == 0 {
                return
            }
            print("moveToHome")
            print("\(index)")
            self?.updateButton(index: index)
            self?.delegate?.movePage(to: index)
        })
        return action
    }
    
    // MARK: - @objc Methods
    
    @objc
    private func pushToNoticeViewController() {
        print("이거는 ViewModel로 연결 할 기능입니다.")
        // 추후 ViewModel로 연결
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
