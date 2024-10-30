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
    
    enum Rank {
        static var rank_firstPlace: UIImage { .load(name: "ic_firstPlace").withRenderingMode(.alwaysOriginal)}
        static var rank_secondPlace: UIImage { .load(name: "ic_secondPlace").withRenderingMode(.alwaysOriginal)}
        static var rank_thirdPlace: UIImage { .load(name: "ic_thirdPlace").withRenderingMode(.alwaysOriginal)}
    }
    
    enum Auth {
        static var kakaoLogin_btn: UIImage { .load(name: "btn_kakaologin").withRenderingMode(.alwaysOriginal)}
        static var appleLogin_btn: UIImage { .load(name: "btn_applelogin").withRenderingMode(.alwaysOriginal)}
    }
    
    enum Navigation {
        static var navigation_back: UIImage { .load(name: "ic_navigation_back").withRenderingMode(.alwaysOriginal)}
    }
    
    enum Comment {
        static var hart_on_ic: UIImage { .load(name: "hart_on_ic").withRenderingMode(.alwaysOriginal)}
        static var hart_off_ic: UIImage { .load(name: "hart_off_ic").withRenderingMode(.alwaysOriginal)}
        static var comment_ic: UIImage { .load(name: "comment_ic").withRenderingMode(.alwaysOriginal)}
        static var userImage_ic: UIImage { .load(name: "userImage_ic").withRenderingMode(.alwaysOriginal)}
    }
}
