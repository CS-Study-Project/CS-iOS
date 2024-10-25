//
//  ComputerscienceSegmantedView.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit

protocol ComputerscienceViewSegmentDelegate: AnyObject {
    func movePage(to index: Int)
}

class ComputerscienceSegmantedView: BaseView {
    
    // MARK: - UI Components Property
    
    lazy var TopicButton = UIButton(frame: .zero, primaryAction: moveToTopic())
    lazy var AnswerButton = UIButton(frame: .zero, primaryAction: moveToAnswer())
    var noticeButton = UIButton()
    
    private var selectedIndex: Int = 0
    weak var delegate: ComputerscienceViewSegmentDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func setStyles() {
        
        TopicButton.do {
            $0.setTitle("주제", for: .normal)
            $0.titleLabel?.font = .fontGuide(.head1)
            $0.setTitleColor(.black000, for: .normal)
        }
        
        AnswerButton.do {
            $0.setTitle("답변", for: .normal)
            $0.titleLabel?.font = .fontGuide(.head1)
            $0.setTitleColor(.gray30, for: .normal)
        }
        
        noticeButton.do {
            $0.setImage(ImageLiterals.Home.home_notice, for: .normal)
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        self.addSubviews(TopicButton, AnswerButton, noticeButton)
        
        TopicButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 6 / 812)
            $0.leading.equalToSuperview().offset(SizeLiterals.Screen.screenWidth * 16 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 29 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 42 / 375)
        }
        
        AnswerButton.snp.makeConstraints {
            $0.top.equalTo(TopicButton.snp.top)
            $0.leading.equalTo(TopicButton.snp.trailing).offset(SizeLiterals.Screen.screenWidth * 17 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 29 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 42 / 375)
        }
        
        noticeButton.snp.makeConstraints {
            $0.top.equalTo(AnswerButton.snp.top).offset(SizeLiterals.Screen.screenHeight * 4 / 812)
            $0.trailing.equalToSuperview().offset(-SizeLiterals.Screen.screenWidth * 14 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 20 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 16 / 375)
        }
    }
    
    // MARK: - Methods
    
    func updateButton(index: Int) {
        switch index {
        case 0:
            TopicButton.setTitleColor(.gray30, for: .normal)
            AnswerButton.setTitleColor(.black000, for: .normal)
            selectedIndex = 1
        case 1:
            TopicButton.setTitleColor(.black000, for: .normal)
            AnswerButton.setTitleColor(.gray30, for: .normal)
            selectedIndex = 0
        default:
            break
        }
    }
    
    private func moveToAnswer() -> UIAction? {
        let action = UIAction(handler: { [weak self] _ in
            guard let index = self?.selectedIndex else { return }
            
            if index == 1 {
                return
            }
            self?.updateButton(index: index)
            self?.delegate?.movePage(to: index)
        })
        return action
    }
    
    private func moveToTopic() -> UIAction? {
        let action = UIAction(handler: { [weak self] _ in
            guard let index = self?.selectedIndex else { return }
            
            if index == 0 {
                return
            }
            self?.updateButton(index: index)
            self?.delegate?.movePage(to: index)
        })
        return action
    }
    
    // MARK: - @objc Methods
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

