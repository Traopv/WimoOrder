//
//  AppDelegate.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/16/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
//    var menuViewController      : MenuViewController!
//    var homeViewController : HomeViewController!
//    var lichsuVC :           LichSuTTVC!
//    var infomationVC : InfromationVC!
//    
//    var navMain: BaseNavigationController!
//    var navLichSu : BaseNavigationController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white

        let welcome = LoginViewController.init()
        let nav = UINavigationController(rootViewController: welcome)
        window?.rootViewController = nav

        window?.makeKeyAndVisible()
        
        return true
    }
}

