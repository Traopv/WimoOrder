//
//  LoginViewController.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/16/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit
import SideMenuSwift

class LoginViewController: UIViewController {

    @IBOutlet weak var imgAvata: UIImageView!
    @IBOutlet weak var txtBooth: UITextField!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conFig()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    func conFig(){
        //bo tròn ảnh
        imgAvata.layer.cornerRadius = imgAvata.frame.height / 2
        imgAvata.clipsToBounds = true
        //button login
        btnLogin.layer.cornerRadius = 10
        btnLogin.clipsToBounds = true
        btnLogin.layer.borderWidth = 1
        btnLogin.layer.borderColor = #colorLiteral(red: 0.9487112164, green: 0.2868438959, blue: 0.2853019238, alpha: 1)
        
        //button register
        btnRegister.layer.cornerRadius = 10
        btnRegister.clipsToBounds = true
        btnRegister.layer.borderWidth = 1
        btnRegister.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    func setUpSideMenu() {
           SideMenuController.preferences.basic.menuWidth = 280
           SideMenuController.preferences.basic.position = .sideBySide
           SideMenuController.preferences.basic.statusBarBehavior = .hideOnMenu
           SideMenuController.preferences.basic.direction = .right
           SideMenuController.preferences.basic.enablePanGesture = false
           SideMenuController.preferences.basic.supportedOrientations = .portrait
           SideMenuController.preferences.basic.shouldRespectLanguageDirection = true

       }
    //MARK: Button
    @IBAction func Login(_ sender: Any) {
//        if let window = UIApplication.shared.windows.first {
//            setUpSideMenu()
//            let homeVC = HomeViewController.init()
//            let menuVC = MenuViewController.init(nibName: "MenuViewController", bundle: nil)
//            window.rootViewController = SideMenuController(contentViewController: homeVC, menuViewController: menuVC)
//        }
        SideMenuHelper.shared.setupDrawerController()
    }
    @IBAction func Register(_ sender: Any) {
    }
}
