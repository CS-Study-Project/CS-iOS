//
//  ComputerscienceTopixView.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit

class ComputerscienceTopixView: BaseView {
    
    // MARK: - UI Components Property
    
    private let topicLabel = UILabel()

    private var topicString: String
    
    init(frame: CGRect, topixString: String) {
        self.topicString = topixString
        super.init(frame: frame)
        setTopic()
    }

    override func setStyles() {
        backgroundColor = .white000
        layer.cornerRadius = 16
        
        topicLabel.do {
            $0.font = .fontGuide(.topic)
            $0.textColor = .black000
        }
    }

    // MARK: - Layout Helper

    override func setLayout() {
        addSubviews(topicLabel)

        topicLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        
    }

    private func setTopic() {
        topicLabel.text = topicString
    }
    
    // MARK: - Methods
    
    
    // MARK: - @objc Methods
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
