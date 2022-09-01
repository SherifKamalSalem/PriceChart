//
//  SceneDelegate.swift
//  PriceChart
//
//  Created by Sherif Kamal on 24/08/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var navigationController = UINavigationController()


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        navigationController.viewControllers = [PriceChartViewController()]
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }
}

