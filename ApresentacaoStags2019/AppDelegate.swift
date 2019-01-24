//
//  AppDelegate.swift
//  ApresentacaoStags2019
//
//  Created by Pedro Zaroni on 03/01/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        let controller = UINavigationController(rootViewController: ViewController())
        window.rootViewController = controller
        self.window = window
        self.window?.makeKeyAndVisible()

        return true
    }
}
