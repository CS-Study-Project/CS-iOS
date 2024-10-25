//
//  HomeViewController.swift
//  ITy
//
//  Created by 천성우 on 9/2/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class HomeViewController: BaseViewController {
    
    
    private let viewModel: HomeViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let profileView = ProfileView()
    private let topicView = TopicView()
    private let checkView = CheckView()
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: - Properties
    
    override func bindViewModel() {
        
    }
    
    override func setStyles() {
        view.backgroundColor = .gray10
        
        checkView.collectionView.do {
            let layout = UICollectionViewFlowLayout()
            layout.minimumInteritemSpacing = 7
            layout.minimumLineSpacing = 7
            $0.collectionViewLayout = layout
            $0.backgroundColor = .clear
            $0.dataSource = self
            $0.delegate = self
            $0.register(CustomCell.self, forCellWithReuseIdentifier: "CustomCell")
        }
    }
    
    override func setLayout() {
        view.addSubviews(profileView, topicView, checkView)
        
        profileView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(SizeLiterals.Screen.screenHeight * 39 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 118 / 812)
        }
        
        topicView.snp.makeConstraints {
            $0.top.equalTo(profileView.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 10 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 163 / 812)
        }
        
        checkView.snp.makeConstraints {
            $0.top.equalTo(topicView.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 15 / 812)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 335 / 375)
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 204 / 812)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11 * 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as? CustomCell else {
            return UICollectionViewCell()
        }
        
        let isBlue = indexPath.row % 11 < 5
        cell.configureCell(isBlue: isBlue)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let totalWidth = collectionView.frame.width
        let cellWidth = (totalWidth - (10 * 8)) / 11
        return CGSize(width: cellWidth, height: cellWidth)
    }
}

