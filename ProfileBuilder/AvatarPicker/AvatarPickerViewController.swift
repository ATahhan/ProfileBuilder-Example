//
//  AvatarPickerViewController.swift
//  ProfileBuilder
//
//  Created by Mohammed Salah on 9/4/18.
//  Copyright © 2018 Mohammed Salah. All rights reserved.
//

import UIKit

class AvatarPickerViewController: UIViewController {
    
    // TODO: Add a segue in storyboard between `AvaratPickerViewController` and `GenderViewController`. Give it an identifier `Gender` or change the constant below as convenient

    // MARK: - Constants
    let GENDER_SEGUE = "Gender"
    
    // MARK: - Vars
    var user:UserProfile?
    
    // MARK: - Outlets
    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet var btnImages: Array<UIButton>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == GENDER_SEGUE {
            // Get the next view
            let nextViewController = segue.destination as! GenderViewController
            
            // TODO: Add newly `selectedImage` to `user` and pass it to `nextViewController`
            
            
        }
    }
 
    // IBActions
    // When user select image
    @IBAction func didPressImage(_ clickedButton: UIButton) {
        
        // Set the profile image with the clicked image
        self.selectedImage.image = clickedButton.imageView?.image
    }
}
