//
//  TopixAnserView.swift
//  ITy
//
//  Created by 천성우 on 10/30/24.
//

import UIKit

import Then
import SnapKit

class TopicAnserView: BaseView, UITextViewDelegate {
    
    // MARK: - UI Components Property
    
    private let topLabel = UILabel()
    private let anserTextView = UITextView()
    private let placeholderLabel = UILabel()
    private let shareButton = UIButton()
    
    
    private let placeholderText = "주제에 대해 작성하고 다른 사람의 생각을 확인하세요!"
    private let placeholderColor = UIColor.gray100
    private let verticalInset = SizeLiterals.Screen.screenHeight * 20 / 812
    private let horizontalInset = SizeLiterals.Screen.screenWidth * 12 / 375
    
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setPlaceholder()
        anserTextView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
        topLabel.do {
            $0.text = "답변 작성"
            $0.font = .fontGuide(.detail1_reg)
            $0.textColor = .gray200
        }
        
        anserTextView.do {
            $0.font = .fontGuide(.body1_reg)
            $0.textColor = .black000
            $0.layer.cornerRadius = 15
            $0.backgroundColor = .gray40
            $0.textContainerInset = UIEdgeInsets(top: verticalInset, left: horizontalInset, bottom: verticalInset, right: horizontalInset)
            $0.showsVerticalScrollIndicator = false
        }
        
        shareButton.do {
            $0.setTitle("지식 공유하기", for: .normal)
            $0.titleLabel?.font = .fontGuide(.head3)
            $0.setTitleColor(.white000, for: .normal)
            $0.layer.cornerRadius = 15
            $0.backgroundColor = .blue100
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(topLabel, anserTextView, shareButton)

        topLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(16)
        }
        
        anserTextView.snp.makeConstraints {
            $0.top.equalTo(topLabel.snp.bottom).offset(13)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 313 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 257 / 812)
        }
        
        shareButton.snp.makeConstraints {
            $0.top.equalTo(anserTextView.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 19 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 315 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 44 / 812)
        }
    }

    // MARK: - Methods

    private func setPlaceholder() {
        anserTextView.attributedText = NSAttributedString(
            string: placeholderText,
            attributes: [
                .foregroundColor: placeholderColor,
                .font: UIFont.fontGuide(.detail2_reg)
            ]
        )
    }
    
    private func removePlaceholder() {
        if anserTextView.attributedText.string == placeholderText {
            anserTextView.text = ""
            anserTextView.textColor = .black000
            anserTextView.font = .fontGuide(.detail2_reg)
        }
    }

    // MARK: - UITextViewDelegate Methods

    func textViewDidBeginEditing(_ textView: UITextView) {
        removePlaceholder()
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            setPlaceholder()
        }
    }
}
