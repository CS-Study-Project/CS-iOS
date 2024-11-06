//
//  AuthViewModel.swift
//  ITy
//
//  Created by 천성우 on 9/10/24.
//

import UIKit

import RxCocoa
import RxSwift

protocol AuthViewModelInput {
}

protocol AuthViewModelOutput {

}

protocol AuthViewModelType {
    var inputs: AuthViewModelInput { get }
    var outputs: AuthViewModelOutput { get }
}

final class AuthViewModel: AuthViewModelInput, AuthViewModelOutput, AuthViewModelType {
    
    var inputs: AuthViewModelInput { return self }
    var outputs: AuthViewModelOutput { return self }
    
    init() {}
}


