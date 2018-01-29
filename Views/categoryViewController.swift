//
//  categoryViewController.swift
//  RHRN-Swft
//
//  Created by Guy on 1/9/18.
//  Copyright © 2018 Durango Computers. All rights reserved.
//

import UIKit

class categoryViewController: UIViewController {

    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var tipsText: UIButton!
    @IBOutlet weak var reminderText: UIButton!
    var callingController:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setTipsTitle(page: callingController)
        setReminderTitle(page: callingController)
        setCatImage(page: callingController)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setCatImage(page: String?){
        switch (page)
        {
        case "rels"?:
            catImage.image = UIImage(named: "App-Relationships-top-image")
        case "clan"?:
            catImage.image = UIImage(named: "App-Clan-Top-Image")
        case "com"?:
            catImage.image = UIImage(named: "App-Commute-Top-Image")
        case "fit"?:
            catImage.image = UIImage(named: "App-Fitness-Top-Image")
        case "health"?:
            catImage.image = UIImage(named: "App-Health-Top-Image")
        case "job"?:
            catImage.image = UIImage(named: "App-Job-Top-Image")
        case "kids"?:
            catImage.image = UIImage(named: "App-Kids-Top-Image")
        case "moola"?:
            catImage.image = UIImage(named: "App-Moola-Top-Image")
        case "stress"?:
            catImage.image = UIImage(named: "App-Stress-Top-Image")
        case "tribe"?:
            catImage.image = UIImage(named: "App-Tribe-Top-Image")
        case "pets"?:
            catImage.image = UIImage(named: "App-Pets-Top-Image")
        case "rise"?:
            catImage.image = UIImage(named: "App-Rise-Top-Image")
        default:
            break
        }
    }
    func setTipsTitle(page: String?){
        switch (page)
        {
        case "rels"?:
            tipsText.setTitle("    Relationships Tips & Tools", for: UIControlState.normal)
        case "clan"?:
            tipsText.setTitle("    Clan Tips & Tools", for: UIControlState.normal)
        case "com"?:
            tipsText.setTitle("    Commute Tips & Tools", for: UIControlState.normal)
        case "fit"?:
            tipsText.setTitle("    Fitness Tips & Tools", for: UIControlState.normal)
        case "health"?:
            tipsText.setTitle("    Health Tips & Tools", for: UIControlState.normal)
        case "job"?:
            tipsText.setTitle("    J.O.B. Tips & Tools", for: UIControlState.normal)
        case "kids"?:
            tipsText.setTitle("    Kids Tips & Tools", for: UIControlState.normal)
        case "moola"?:
            tipsText.setTitle("    Moola Tips & Tools", for: UIControlState.normal)
        case "stress"?:
            tipsText.setTitle("    Stress Tips & Tools", for: UIControlState.normal)
        case "tribe"?:
            tipsText.setTitle("    Tribe Tips & Tools", for: UIControlState.normal)
        case "pets"?:
            tipsText.setTitle("    Pets Tips & Tools", for: UIControlState.normal)
        case "rise"?:
            tipsText.setTitle("    Rise and Shine Tips & Tools", for: UIControlState.normal)
        default:
            break
        }
    }
    func setReminderTitle(page: String?){
        switch (page)
        {
        case "rels"?:
            reminderText.setTitle("    Set your Relationships Moment", for: UIControlState.normal)
        case "clan"?:
            reminderText.setTitle("    Set your Clan Moment", for: UIControlState.normal)
        case "com"?:
            reminderText.setTitle("    Set your Commute Moment", for: UIControlState.normal)
        case "fit"?:
            reminderText.setTitle("    Set your Fitness Moment", for: UIControlState.normal)
        case "health"?:
            reminderText.setTitle("    Set your Health Moment", for: UIControlState.normal)
        case "job"?:
            reminderText.setTitle("    Set your J.O.B. Moment", for: UIControlState.normal)
        case "kids"?:
            reminderText.setTitle("    Set your Kids Moment", for: UIControlState.normal)
        case "moola"?:
            reminderText.setTitle("    Set your Moola Moment", for: UIControlState.normal)
        case "stress"?:
            reminderText.setTitle("    Set your Stress Moment", for: UIControlState.normal)
        case "tribe"?:
            reminderText.setTitle("    Set your Tribe Moment", for: UIControlState.normal)
        case "pets"?:
            reminderText.setTitle("    Set your Pets Moment", for: UIControlState.normal)
        case "rise"?:
            reminderText.setTitle("    Set your Rise and Shine Moment", for: UIControlState.normal)
        default:
            break
        }
    }

    @IBAction func howToButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "howToViewController") as! howToViewController
        controller.callingViewController = callingController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func reminderButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "setReminderViewController") as! setReminderViewController
        controller.reminderCategory = callingController
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
