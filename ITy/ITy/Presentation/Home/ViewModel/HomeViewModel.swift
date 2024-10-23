//
//  HomeViewModel.swift
//  ITy
//
//  Created by 천성우 on 9/2/24.
//

import UIKit

import RxCocoa
import RxSwift

protocol HomeViewModelInput {
    func didTapNoticeButton()
    func didDismissNoticeVC()
}

protocol HomeViewModelOutput {
    var pushPage: BehaviorRelay<Bool> { get }
}

protocol HomeViewModelType {
    var inputs: HomeViewModelInput { get }
    var outputs: HomeViewModelOutput { get }
}

final class HomeViewModel: HomeViewModelInput, HomeViewModelOutput, HomeViewModelType {
    
    var pushPage: BehaviorRelay<Bool> = BehaviorRelay(value: false)

    var inputs: HomeViewModelInput { return self }
    var outputs: HomeViewModelOutput { return self }
    
    init() {}
    
    func didTapNoticeButton() {
        pushPage.accept(true)
    }
    
    func didDismissNoticeVC() {
        pushPage.accept(false)
    }
}


