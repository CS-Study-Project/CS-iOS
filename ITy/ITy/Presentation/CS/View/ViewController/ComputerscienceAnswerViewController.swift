//
//  ComputerscienceReviewViewController.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class ComputerscienceAnswerViewController: BaseViewController {
    
    
    private let viewModel: ComputerscienceViewModel
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    
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
        view.backgroundColor = .blue100
    }
    
    override func setLayout() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
