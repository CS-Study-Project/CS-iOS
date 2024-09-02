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
}

protocol HomeViewModelOutput {

}

protocol HomeViewModelType {
    var inputs: HomeViewModelInput { get }
    var outputs: HomeViewModelOutput { get }
}

final class HomeViewModel: HomeViewModelInput, HomeViewModelOutput, HomeViewModelType {
    
    var inputs: HomeViewModelInput { return self }
    var outputs: HomeViewModelOutput { return self }
    
    init() {}
}


