//
//  setReminderViewController.swift
//  RHRN-Swft
//
//  Created by Guy on 1/10/18.
//  Copyright © 2018 Durango Computers. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications


class setReminderViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    var reminderCategory: String?
    var reminderImage: String?
    var cameraBool: String?
    var myImageUrl: URL?
    var myImageName: String?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var reminderText: UITextView!
    @IBOutlet weak var reminderTitle: UITextField!
    @IBOutlet weak var repeatSwitch: UISwitch!
    @IBOutlet weak var reminderTime: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        repeatSwitch.isOn = false
        //close keyboard
        reminderTitle.delegate = self

        let keyboardToolBar = UIToolbar()
        keyboardToolBar.sizeToFit()
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem:
            UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem:
            UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked) )
        
        keyboardToolBar.setItems([flexibleSpace, doneButton], animated: true)
        
        reminderText.inputAccessoryView = keyboardToolBar
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        default:
            reminderTitle.resignFirstResponder()
        }
        return true
    }
    
    func imageRotatedByDegrees(oldImage: UIImage, deg degrees: CGFloat) -> UIImage {
        //Calculate the size of the rotated view's containing box for our drawing space
        let rotatedViewBox: UIView = UIView(frame: CGRect(x: 0, y: 0, width: oldImage.size.width, height: oldImage.size.height))
        let t: CGAffineTransform = CGAffineTransform(rotationAngle: degrees * CGFloat.pi / 180)
        rotatedViewBox.transform = t
        let rotatedSize: CGSize = rotatedViewBox.frame.size
        //Create the bitmap context
        UIGraphicsBeginImageContext(rotatedSize)
        let bitmap: CGContext = UIGraphicsGetCurrentContext()!
        //Move the origin to the middle of the image so we will rotate and scale around the center.
        bitmap.translateBy(x: rotatedSize.width / 2, y: rotatedSize.height / 2)
        //Rotate the image context
        bitmap.rotate(by: (degrees * CGFloat.pi / 180))
        //Now, draw the rotated/scaled image into the context
        bitmap.scaleBy(x: 1.0, y: -1.0)
        bitmap.draw(oldImage.cgImage!, in: CGRect(x: -oldImage.size.height / 2, y: -oldImage.size.width / 2, width: oldImage.size.height, height: oldImage.size.width))
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return newImage
    }
    func scheduleNotification() {
        /*
         let calendar = Calendar(identifier: .gregorian)
         let components = calendar.dateComponents(in: .current, from: date)
         let newComponents = DateComponents(calendar: calendar, timeZone: .current, month: components.month, day: components.day, hour: components.hour, minute: components.minute)
         */
        //let trigger = UNCalendarNotificationTrigger(dateMatching: newComponents, repeats: false)
        let date = reminderTime.date
        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hour = components.hour!
        let minute = components.minute!
        
        //create trigger
        var trigger: UNCalendarNotificationTrigger?
        if repeatSwitch.isOn{
            var dateComponents = DateComponents()
            dateComponents.hour = hour
            dateComponents.minute = minute
            //set to false until we have a way to turn it off
            //trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        }
        else {var dateComponents = DateComponents()
            dateComponents.hour = hour
            dateComponents.minute = minute
            trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        }
        //set name
        //reminderCategory = "kids"
        let notificationName = reminderCategory!+"-notification"
        
        
        //load content
        let content = UNMutableNotificationContent()

        content.title = reminderTitle.text!
        content.body = reminderText.text
        content.sound = UNNotificationSound.default()
        //copy file to local doc and rename it to the category
        if let haveImage = imageView.image {
            let fileManager = FileManager.default
            let paths = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(reminderCategory!+".jpg")
            var imageNew: UIImage?
            if (cameraBool == "t"){ //need to rotate
                imageNew = imageRotatedByDegrees(oldImage: imageView.image!, deg: 90)
            }
            else {
                imageNew = imageView.image
            }
            let imageData = UIImageJPEGRepresentation(imageNew!, 0.5)
            fileManager.createFile(atPath: paths as String, contents: imageData, attributes: nil)
            //debug to see if the file is loadable
            /*
             let fileManagerGet = FileManager.default
             let imagePAth = (paths as NSString).appendingPathComponent(reminderCategory)
             if fileManagerGet.fileExists(atPath: paths){
             self.imageView.image = UIImage(contentsOfFile: imagePAth)
             }else{
             print("No Image")
             }
             */
            //set attachment
            let url = URL(string: "file://"+paths)
            let attachment = try! UNNotificationAttachment(identifier: notificationName, url: url!, options: [:])
            content.attachments = [attachment]
        }
        
        let request = UNNotificationRequest(identifier: "textNotification", content: content, trigger: trigger)
        
        let alert = UIAlertController(title: "Notification Set" , message: "Your reminder is set!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print("Uh oh! We had an error: \(error)")
            }
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        imageView.image = image
        //save the image to phot lib
        /*
        if (cameraBool == "t"){
            let imageData = UIImageJPEGRepresentation(imageView.image!, 0.6)
            let compressedJPGImage = UIImage(data: imageData!)
            UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
        }
        */
        /*
        let imageUrl          = info[UIImagePickerControllerReferenceURL] as! NSURL
        let imageName         = imageUrl.lastPathComponent
        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let photoURL          = NSURL(fileURLWithPath: documentDirectory)
        let localPath         = photoURL.appendingPathComponent(imageName!)
        //myImageUrl = localPath
        myImageUrl = info[UIImagePickerControllerReferenceURL] as? URL
        myImageName = imageName
        */
        
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseImage(_ sender: Any) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        present(controller, animated: true, completion: nil)
        cameraBool = "f"
    }
    
    @IBAction func openCamera(_ sender: Any) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .camera
        present(controller, animated: true, completion: nil)
        cameraBool = "t"
    }
    
    @IBAction func saveSetReminder(_ sender: Any) {
        scheduleNotification()
    }
}
