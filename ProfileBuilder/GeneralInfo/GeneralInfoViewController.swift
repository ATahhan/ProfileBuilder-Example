//
//  GeneralInfoViewController.swift
//  ProfileBuilder
//
//  Created by Mohammed Salah on 11/1/18.
//  Copyright © 2018 Mohammed Salah. All rights reserved.
//

import UIKit

class GeneralInfoViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tfInfo: UITextView!
    
    // MARK: - Vars
    var user:UserProfile?
    
    // MARK: - Constants
    let FINAL_SEGUE = "Final"

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == FINAL_SEGUE {
            // Get the next view
            let nextViewController = segue.destination as! FullProfileViewController
            
            // Add Values to user and send it with next ViewController
            user?.extraInfo = tfInfo.text
            
            // Send user via segua to next ViewController
            nextViewController.user = user
            
        }
    }
    

}
