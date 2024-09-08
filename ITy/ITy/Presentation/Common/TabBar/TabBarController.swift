//
//  TabBarController.swift
//  ITy
//
//  Created by 천성우 on 8/29/24.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    private let tabBarHeight: CGFloat = SizeLiterals.Screen.screenHeight * 74 / 812
    private var tabs: [UIViewController] = []
    
    // MARK: - View Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarItems()
        setTabBarUI()
        setTabBarHeight()
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        tabBar.frame.size.height = self.tabBarHeight + getSafeAreaBottomHeight()
//    }
}

private extension TabBarController {
    
    func setTabBarItems() {
        
        let teamVC = UINavigationController(rootViewController: ViewController())
        let studyVC = UINavigationController(rootViewController: ViewController())
        let homeVC = UINavigationController(rootViewController: MainViewController())
        let csVC = UINavigationController(rootViewController: ViewController())
        let myPageVC = UINavigationController(rootViewController: ViewController())
        
        tabs = [
            teamVC,
            studyVC,
            homeVC,
            csVC,
            myPageVC
        ]
        
        TabBarItemType.allCases.forEach {
            let tabBarItem = $0.setTabBarItem()
            tabs[$0.rawValue].tabBarItem = tabBarItem
            tabs[$0.rawValue].tabBarItem.tag = $0.rawValue
        }
        
        setViewControllers(tabs, animated: false)

    }
    
    func setTabBarUI() {
        UITabBar.clearShadow()
        tabBar.backgroundColor = UIColor.white000
//        tabBar.tintColor = UIColor.white000
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = UIColor.gray20.cgColor
        tabBar.layer.shadowOpacity = 1
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 1
    }
    
    func getSafeAreaBottomHeight() -> CGFloat {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let safeAreaInsets = windowScene.windows.first?.safeAreaInsets
            let bottomSafeAreaHeight = safeAreaInsets?.bottom ?? 0
            return bottomSafeAreaHeight
        }
        return 0
    }
    
    func setTabBarHeight() {
        if let tabBar = self.tabBarController?.tabBar {
            let safeAreaBottomInset = self.view.safeAreaInsets.bottom
            let tabBarHeight = tabBar.bounds.height
            let newTabBarFrame = CGRect(x: tabBar.frame.origin.x, y: tabBar.frame.origin.y, width: tabBar.frame.width, height: tabBarHeight + safeAreaBottomInset)
            tabBar.frame = newTabBarFrame
        }
    }
}
