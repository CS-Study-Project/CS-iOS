//
//  ImageLiterals.swift
//  ITy
//
//  Created by 천성우 on 8/29/24.
//

import UIKit

enum ImageLiterals {
    enum TabBar {
        static var team_on: UIImage { .load(name: "ic_team_on").withRenderingMode(.alwaysOriginal) }
        static var team_off: UIImage { .load(name: "ic_team_off").withRenderingMode(.alwaysOriginal) }
        static var study_on: UIImage { .load(name: "ic_study_on").withRenderingMode(.alwaysOriginal) }
        static var study_off: UIImage { .load(name: "ic_study_off").withRenderingMode(.alwaysOriginal) }
        static var home_on: UIImage { .load(name: "ic_home_on").withRenderingMode(.alwaysOriginal) }
        static var home_off: UIImage { .load(name: "ic_home_off").withRenderingMode(.alwaysOriginal) }
        static var cs_on: UIImage { .load(name: "ic_cs_on").withRenderingMode(.alwaysOriginal) }
        static var cs_off: UIImage { .load(name: "ic_cs_off").withRenderingMode(.alwaysOriginal) }
        static var myPage_on: UIImage { .load(name: "ic_myPage_on").withRenderingMode(.alwaysOriginal) }
        static var myPage_off: UIImage { .load(name: "ic_myPage_off").withRenderingMode(.alwaysOriginal) }
    }
    
    enum Home {
        static var home_profile: UIImage { .load(name: "ic_profile").withRenderingMode(.alwaysOriginal) }
        static var home_notice: UIImage { .load(name: "ic_notice").withRenderingMode(.alwaysOriginal) }
    }
}
