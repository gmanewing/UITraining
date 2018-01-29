//
//  dashboardViewController.swift
//  RHRN-Swft
//
//  Created by Guy on 9/25/17.
//  Copyright © 2017 Durango Computers. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

class dashboardViewController: UIViewController {
    
    //MARK: Properties
    var fromLogin:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if fromLogin == "True"{
            self.navigationItem.setHidesBackButton(true, animated:true);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Actions
    @IBAction func randomBump(_ sender: UIButton) {
       
    }
    
    
    @IBAction func showMyFriends(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "listFriendsViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
