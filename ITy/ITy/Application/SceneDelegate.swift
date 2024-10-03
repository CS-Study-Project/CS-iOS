//
//  SceneDelegate.swift
//  ITy
//
//  Created by 천성우 on 8/29/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        
        let mainViewController = VideoTrackViewController()
//        mainViewController.selectedIndex = 2
        guard let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else { return }
        sceneDelegate.window?.rootViewController = UINavigationController(rootViewController: mainViewController)
        sceneDelegate.window?.makeKeyAndVisible()
    }
}
