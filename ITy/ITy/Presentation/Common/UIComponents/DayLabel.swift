//
//  DayLabel.swift
//  ITy
//
//  Created by 천성우 on 10/25/24.
//

import UIKit

class DayLabel: UILabel {

    
    init(frame: CGRect ,dayString: String) {
        super.init(frame: frame)
        setLabel(dayString: dayString)
    }
    
    private func setLabel(dayString: String) {
        self.text = dayString
        self.font = .fontGuide(.detail2_reg)
        self.transform = CGAffineTransform(rotationAngle: CGFloat.pi / -36)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

