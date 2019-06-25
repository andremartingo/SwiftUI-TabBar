//
//  SceneDelegate.swift
//  swiftui-tabbar
//
//  Created by Andre Martingo on 25.06.19.
//  Copyright © 2019 Andre Martingo. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: TabBar())
            self.window = window
            window.makeKeyAndVisible()
        }
    }

}

