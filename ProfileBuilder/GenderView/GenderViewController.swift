//
//  GenderViewController.swift
//  ProfileBuilder
//
//  Created by Mohammed Salah on 11/1/18.
//  Copyright © 2018 Mohammed Salah. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {

    // MARK: - Constants
    let GENERANL_INFO_SEGUE = "General_Info"
    
    // MARK: - Vars
    var user:UserProfile?
    
    // MARK: - Outlets
    @IBOutlet weak var sgmntGender: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == GENERANL_INFO_SEGUE {
            // Get the next view
            let nextViewController = segue.destination as! GeneralInfoViewController
            
            
            // Send user via segua to next ViewController
            nextViewController.user = user
            
        }
    }
 

}
