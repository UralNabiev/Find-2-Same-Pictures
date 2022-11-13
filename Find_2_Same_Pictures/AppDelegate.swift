//
//  AppDelegate.swift
//  Find_2_Same_Pictures
//
//  Created by O'ral Nabiyev on 08/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainVC(nibName: "MainVC", bundle: nil)
//        let vc = GameVC(nibName: "GameVC", bundle: nil)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }




}

