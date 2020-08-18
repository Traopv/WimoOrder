//
//  SideMenuHelper.swift
//  WimoOrder
//
//  Created by ELSAGA-MACOS on 8/17/20.
//  Copyright © 2020 ELSAGA-MACOS. All rights reserved.
//

import UIKit

class SideMenuHelper: NSObject {
    //singleton
    static let shared = SideMenuHelper()
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    fileprivate var drawerController            : DrawerController!
    
    var navMain : BaseNavigationController!
    var navLichSu : BaseNavigationController!
    var navInfo : BaseNavigationController!
    
    //MARK: SETUP SITE MENU
        func showMenu(){
            if drawerController == nil{
                setupDrawerController()
            }else{
                drawerController.toggleLeftDrawerSide(animated: true, completion: nil)
            }
        }
        func closeMenu(){
            drawerController.closeDrawer(animated: false, completion: nil)
        }
    func setupDrawerController(){
        let menuViewController = MenuViewController.init(nibName: "MenuViewController", bundle: nil)
            menuViewController.onSelectedType = { type in
                self.handleMenuSelectedType(type: type)
            }
        if navMain == nil{
                let homeViewController = HomeViewController.init(nibName: "HomeViewController", bundle: nil)
                navMain = BaseNavigationController.init(rootViewController: homeViewController)
            }
            drawerController = DrawerController.init(centerViewController: navMain, leftDrawerViewController: menuViewController)
            drawerController.showsShadows = true
            drawerController.restorationIdentifier = "Drawer"
            drawerController.maximumRightDrawerWidth = 300.0
            drawerController.openDrawerGestureModeMask = .custom
            drawerController.closeDrawerGestureModeMask = .all
            drawerController.drawerVisualStateBlock = { (drawerController, drawerSide, fractionVisible) in
                let block = ExampleDrawerVisualStateManager.sharedManager.drawerVisualStateBlock(for: drawerSide)
                block?(drawerController, drawerSide, fractionVisible)
            }
            appDelegate.window?.rootViewController = drawerController
//            let nav = UINavigationController(rootViewController: drawerController)
//            appDelegate.window!.rootViewController = nav
        }
    func handleMenuSelectedType(type : TypeMenu){
        switch (type) {
        case (.trangChu):
            if navMain == nil{
                let homeViewController = HomeViewController.init(nibName: "HomeViewController", bundle: nil)
                navMain = BaseNavigationController.init(rootViewController: homeViewController)
            }
            drawerController.setCenter(navMain, withCloseAnimation: true, completion: nil)
            break
        case (.lichSu):
            if navLichSu == nil{
                let lichsuVC = LichSuTTVC.init(nibName: "LichSuTTVC", bundle: nil)
                navLichSu = BaseNavigationController.init(rootViewController: lichsuVC)
            }
            drawerController.setCenter(navLichSu, withCloseAnimation: true, completion: nil)
            break
        case (.thongTin):
            if navInfo == nil{
                let infoVC = InfromationVC.init(nibName: "InfromationVC", bundle: nil)
                navInfo = BaseNavigationController.init(rootViewController: infoVC)
            }
            drawerController.setCenter(navInfo, withCloseAnimation: true, completion: nil)
            break
        case (.dangXuat):
            // close menu
            closeMenu()
            //showView
            Timer.runThisAfterDelay(seconds: 0.2) {
               let  logout : LogoutView = LogoutView().fromNib(nibName: "LogoutView", index: 0) as! LogoutView
                logout.configViewUI()
                let klc = KLCPopup.init(contentView: logout)
                klc?.showType = .bounceInFromLeft
                klc?.dismissType = .bounceOutToTop
                klc?.maskType = .dimmed
                klc?.shouldDismissOnBackgroundTouch = true
                klc?.show()
            }
            break
        default:
            break
        }
    }
    
}
