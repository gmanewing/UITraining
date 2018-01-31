//
//  reminderDashboardViewController.swift
//  RHRN-Swft
//
//  Created by Guy on 9/26/17.
//  Copyright © 2017 Durango Computers. All rights reserved.
//

import Foundation
import UIKit

class reminderDashboardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func riseShine(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "rise"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func relsButton2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "rels"
        self.navigationController?.pushViewController(controller, animated: true)
    }


    @IBAction func kidsButton(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "kids"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func tribeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "tribe"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func comButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "com"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func clanButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "clan"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func jobButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "job"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func stressButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "stress"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func moolaButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "moola"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func healthButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "health"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func fitButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "fit"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func petsButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! categoryViewController
        controller.callingController = "pets"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}
