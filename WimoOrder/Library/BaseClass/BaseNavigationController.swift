//
//  BaseNavigationController.swift
//  Swift_SMS2016
//
//  Created by Bluesea on 2/25/16.
//  Copyright © 2016 abc. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    ///Variable to store data through every viewcontroller in this navigation
    var navStoreData : NSMutableDictionary = NSMutableDictionary()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
