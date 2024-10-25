//
//  CheckCell.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit

final class CustomCell: UICollectionViewCell {
    
    private let squareView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        contentView.addSubview(squareView)
        squareView.layer.cornerRadius = 3
        squareView.clipsToBounds = true
    }

    private func setupLayout() {
        addSubviews(squareView)
        
        squareView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    // 셀을 업데이트하는 메서드
    func configureCell(isBlue: Bool) {
        squareView.backgroundColor = isBlue ? .blue100 : .gray0
    }
}
