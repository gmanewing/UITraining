//
//  howToViewController.swift
//  RHRN-Swft
//
//  Created by Guy on 1/8/18.
//  Copyright © 2018 Durango Computers. All rights reserved.
//

import UIKit

class howToViewController: UIViewController {
    
    var callingViewController:String?

    @IBOutlet weak var pictureOne: UIImageView!
    @IBOutlet weak var pictureTwo: UIImageView!
    @IBOutlet weak var pictureThree: UIImageView!
    @IBOutlet weak var pictureFour: UIImageView!
    @IBOutlet weak var pictureFive: UIImageView!
    @IBOutlet weak var textOne: UITextView!
    @IBOutlet weak var textTwo: UITextView!
    @IBOutlet weak var textThree: UITextView!
    @IBOutlet weak var textFour: UITextView!
    @IBOutlet weak var textFive: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Load pictures and text depending on which view Controller called this page
         generatePage(page: callingViewController)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func generatePage(page: String?){
        //which images and text?
        switch (page)
        {
        case "rels"?:
            pictureOne.image = UIImage(named: "App-Relationships-1")
            pictureTwo.image = UIImage(named: "App-Relationships-2")
            pictureThree.image = UIImage(named: "App-Relationships-3")
            pictureFour.image = UIImage(named: "App-Relationships-4")
            pictureFive.image = UIImage(named: "App-Relationships-5")
            textOne.text = "In this moment choose to be the best YOU."
            textTwo.text = "Choose to focus on the best in your partner. See 85/15 rule*. (*not sure where this will be included)"
            textThree.text = "Put down your phone, clear your mind, be wholly with your partner. Focus on them, share a moment, share a laugh."
            textFour.text = "Listen, really hear what is being said, make eye contact. Be more committed to what is being said than what you have to say."
            textFive.text = "Allow for quiet time together. Be grateful, find joy, touch often."
        case "clan"?:
            pictureOne.image = UIImage(named: "App-Clan-1")
            pictureTwo.image = UIImage(named: "App-Clan-2")
            pictureThree.image = UIImage(named: "App-Clan-3")
            pictureFour.image = UIImage(named: "App-Clan-4")
            pictureFive.image = UIImage(named: "App-Clan-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        case "com"?:
            pictureOne.image = UIImage(named: "App-Commute-1")
            pictureTwo.image = UIImage(named: "App-Commute-2")
            pictureThree.image = UIImage(named: "App-Commute-3")
            pictureFour.image = UIImage(named: "App-Commute-4")
            pictureFive.image = UIImage(named: "App-Commute-5")
            textOne.text = "When you put your hand on the door handle or enter the car/bus/train take a couple deep breaths - breathe in on “Right Here,” breathe out on “Right Now.” Clear away the mind chatter of the day’s events or what’s ahead. Focus on something outside of your head."
            textTwo.text = "Choose to look at your commute as time spent with yourself to explore and experience being NOW. The more time we spend in the NOW moment the more joy we have."
            textThree.text = "Look around, find something that makes you smile. Wave at a stranger, give them a grin, a simple gesture that feels good, gets you out of your head and it may well make their day. If you’re driving, notice how being present enhances your peripheral vision and safety as a driver."
            textFour.text = "Instead of dreading the daily commute, use this time as an opportunity to find gratitude in your life. Look at the bigger world around you and find something beautiful. Granted, life isn’t always awesome but it can be a whole lot better if we choose to see it in present NOW time. We may not get a vote about what life tosses us, but we do get a vote about what we are going to do about it, and how we are going to feel about it."
            textFive.text = "Make a playlist of songs that make you feel happy."
        case "fit"?:
            pictureOne.image = UIImage(named: "App-Fitness-1")
            pictureTwo.image = UIImage(named: "App-Fitness-2")
            pictureThree.image = UIImage(named: "App-Fitness-3")
            pictureFour.image = UIImage(named: "App-Fitness-4")
            pictureFive.image = UIImage(named: "App-Fitness-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        case "health"?:
            pictureOne.image = UIImage(named: "App-Health-1")
            pictureTwo.image = UIImage(named: "App-Health-2")
            pictureThree.image = UIImage(named: "App-Health-3")
            pictureFour.image = UIImage(named: "App-Health-4")
            pictureFive.image = UIImage(named: "App-Health-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        case "job"?:
            pictureOne.image = UIImage(named: "App-Job-1")
            pictureTwo.image = UIImage(named: "App-Job-2")
            pictureThree.image = UIImage(named: "App-Job-3")
            pictureFour.image = UIImage(named: "App-Job-4")
            pictureFive.image = UIImage(named: "App-Job-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        case "kids"?:
            pictureOne.image = UIImage(named: "App-Kids-1")
            pictureTwo.image = UIImage(named: "App-Kids-2")
            pictureThree.image = UIImage(named: "App-Kids-3")
            pictureFour.image = UIImage(named: "App-Kids-4")
            pictureFive.image = UIImage(named: "App-Kids-5")
            textOne.text = "Slow down. Give yourself 60 seconds to take a few deep breaths, clear the mind chatter, put the events of today aside. Focus on something that brings you joy."
            textTwo.text = "When you walk in the door or the kids pile in the car, give the best of YOU. Our family deserves all of us. Put down the phone, the text and emails can wait."
            textThree.text = "Realize that time spent with your family is as much for you as them. Look at it as filling you up versus draining you away."
            textFour.text = "Take some time to play High/Low = “What was the best part of your day…? What was the low part of your day…?” This is an excellent way to get a real feel to what is going on with those we love. Do it consistently, this makes a great dinnertime habit."
            textFive.text = "Family is the priority. Find the balance in truly being engaged, responsive, and present.   Happy parents make for happy kids."
        case "moola"?:
            pictureOne.image = UIImage(named: "App-Moola-1")
            pictureTwo.image = UIImage(named: "App-Moola-2")
            pictureThree.image = UIImage(named: "App-Moola-3")
            pictureFour.image = UIImage(named: "App-Moola-4")
            pictureFive.image = UIImage(named: "App-Moola-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        case "stress"?:
            pictureOne.image = UIImage(named: "App-Stress-1")
            pictureTwo.image = UIImage(named: "App-Stress-2")
            pictureThree.image = UIImage(named: "App-Stress-3")
            pictureFour.image = UIImage(named: "App-Stress-4")
            pictureFive.image = UIImage(named: "App-Stress-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        case "tribe"?:
            pictureOne.image = UIImage(named: "App-Tribe-1")
            pictureTwo.image = UIImage(named: "App-Tribe-2")
            pictureThree.image = UIImage(named: "App-Tribe-3")
            pictureFour.image = UIImage(named: "App-Tribe-4")
            pictureFive.image = UIImage(named: "App-Tribe-5")
            textOne.text = "When you put your hand on the door handle, take a few deep breaths - breathe in on “Right Here,” breathe out on “Right Now” - to clear the mind chatter, look around and become Right Here Right Now. Turn the handle and walk in."
            textTwo.text = "Put down your phone. Our memories are not made by posts to F/B or Snapchat. Let’s spend our time really “being” with our friends."
            textThree.text = "Do your friends provide a safe place for you to be who you are? Do we provide that for them?"
            textFour.text = "For many of us our friends help us put the stress of life on hold. Often they are the ones that keep us real. Choose these types of friends - be that type of friend."
            textFive.text = "Whether meeting up for a workout or a drink, clear your mind, show up in the moment, be available. Choose a tribe you can count on to tell the truth."
        case "pets"?:
            pictureOne.image = UIImage(named: "App-Pets-1")
            pictureTwo.image = UIImage(named: "App-Pets-2")
            pictureThree.image = UIImage(named: "App-Pets-3")
            pictureFour.image = UIImage(named: "App-Pets-4")
            pictureFive.image = UIImage(named: "App-Pets-5")
            textOne.text = ""
            textTwo.text = ""
            textThree.text = ""
            textFour.text = ""
            textFive.text = ""
        default:
            break
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
