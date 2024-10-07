//
//  UnderLineTextField.swift
//  ITy
//
//  Created by 천성우 on 9/25/24.
//


import UIKit

import Then
import SnapKit

class UnderlineTextField: UITextField {
    
    // 언더라인 레이어
    private let underlineLayer = CALayer()
    
    // 기본 상태에서의 언더라인 색상
    var defaultUnderlineColor: UIColor = .gray30 {
        didSet {
            updateUnderlineColor()
        }
    }
    
    // 활성화 상태에서의 언더라인 색상
    var activeUnderlineColor: UIColor = .black000
    
    // 오류 상태에서의 언더라인 색상
    var errorUnderlineColor: UIColor = .red300
    
    // 오류 상태인지 여부
    var isError: Bool = false {
        didSet {
            updateUnderlineColor()
        }
    }

    init(frame: CGRect, placeholderString: String) {
        super.init(frame: frame)
        placeholder = placeholderString
        setupUnderline()
        setupObservers()
    }
    
    // 언더라인 설정
    private func setupUnderline() {
        borderStyle = .none
        underlineLayer.backgroundColor = defaultUnderlineColor.cgColor
        layer.addSublayer(underlineLayer)
    }
    
    // 텍스트 필드의 프레임에 맞춰 언더라인 위치 및 크기 설정
    override func layoutSubviews() {
        super.layoutSubviews()
        let underlineHeight: CGFloat = 1.0
        underlineLayer.frame = CGRect(x: 0, y: frame.height - underlineHeight, width: frame.width, height: underlineHeight)
    }
    
    // 언더라인 색상을 업데이트하는 메서드
    private func updateUnderlineColor() {
        if isError {
            underlineLayer.backgroundColor = errorUnderlineColor.cgColor
        } else if isFirstResponder {
            underlineLayer.backgroundColor = activeUnderlineColor.cgColor
        } else {
            underlineLayer.backgroundColor = defaultUnderlineColor.cgColor
        }
    }
    
    // 상태 변화에 따라 언더라인 색상을 업데이트
    private func setupObservers() {
        addTarget(self, action: #selector(editingBegan), for: .editingDidBegin)
        addTarget(self, action: #selector(editingEnded), for: .editingDidEnd)
    }
    
    @objc private func editingBegan() {
        updateUnderlineColor()
    }
    
    @objc private func editingEnded() {
        updateUnderlineColor()
    }
    
    // 비밀번호 입력 타입 설정
    func setPasswordMode() {
        isSecureTextEntry = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
