//
//  TabBarItem.swift
//  ITy
//
//  Created by 천성우 on 8/29/24.
//

import UIKit

enum TabBarItemType: Int, CaseIterable {
    case team
    case study
    case home
    case cs
    case myPage
}

extension TabBarItemType {
    
    var unSelectedIcon: UIImage {
        switch self {
        case .team:
            return ImageLiterals.TabBar.team_off
        case .study:
            return ImageLiterals.TabBar.study_off
        case .home:
            return ImageLiterals.TabBar.home_off
        case .cs:
            return ImageLiterals.TabBar.cs_off
        case .myPage:
            return ImageLiterals.TabBar.myPage_off
        }
    }
    
    var selectedIcon: UIImage {
        switch self {
        case .team:
            return ImageLiterals.TabBar.team_on
        case .study:
            return ImageLiterals.TabBar.study_on
        case .home:
            return ImageLiterals.TabBar.home_on
        case .cs:
            return ImageLiterals.TabBar.cs_on
        case .myPage:
            return ImageLiterals.TabBar.myPage_on
        }
    }
    
    func setTabBarItem() -> UITabBarItem {
        return UITabBarItem(title: "", image: unSelectedIcon, selectedImage: selectedIcon)
    }
}

