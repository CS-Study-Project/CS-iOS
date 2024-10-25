//
//  ComputerscienceViewModel.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

import RxCocoa
import RxSwift

protocol ComputerscienceViewModelInput {
}

protocol ComputerscienceViewModelOutput {
}

protocol ComputerscienceViewModelType {
    var inputs: ComputerscienceViewModelInput { get }
    var outputs: ComputerscienceViewModelOutput { get }
}

final class ComputerscienceViewModel: ComputerscienceViewModelInput, ComputerscienceViewModelOutput, ComputerscienceViewModelType {
    
    var inputs: ComputerscienceViewModelInput { return self }
    var outputs: ComputerscienceViewModelOutput { return self }
    
    init() {}
}
