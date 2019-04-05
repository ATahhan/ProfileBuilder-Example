//
//  BasicInformationViewController.swift
//  ProfileBuilder
//
//  Created by Mohammed Salah on 9/2/18.
//  Copyright © 2018 Mohammed Salah. All rights reserved.
//

import UIKit

class BasicInformationViewController: UIViewController {

    // MARK: - Vars
    let AVATAR_SEGUE = "Avatar"
    
    // MARK: - IBActions
    @IBOutlet weak var tfFirstName: UITextField!
    @IBOutlet weak var tfLastName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

		// TODO: observe the notification and pop to root view controller
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
        
        if segue.identifier == AVATAR_SEGUE &&
            isValidateName(name: tfFirstName.text!) &&
            isValidateName(name: tfLastName.text!) &&
            isValidateEmail(email: tfEmail.text!) {
            
            // TODO: Create a UserProfile object, assign its properties and pass it to AvatarPickerViewController
            

        } else {
            let alert = UIAlertController(title: "Error", message: "Fill required data", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
 

    // MARK: - Validation
    func isValidateEmail(email:String) -> Bool {
        return (email.count >= 7) && (email.contains("@")) && (email.contains("."))
    }
    
    func isValidateName(name:String) -> Bool {
        return name.count >= 2
    }
    
}


extension BasicInformationViewController : UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == tfEmail {
            if !isValidateEmail(email: textField.text!) {
                textField.layer.borderColor = UIColor.red.cgColor
                textField.layer.borderWidth = 1.0
            } else {
                textField.layer.borderWidth = 0.0
            }
        } else if textField == tfFirstName || textField == tfLastName {
            if !isValidateName(name: textField.text!) {
                textField.layer.borderColor = UIColor.red.cgColor
                textField.layer.borderWidth = 1.0
            } else {
                textField.layer.borderWidth = 0.0
            }
        }
        
        return true
    }
}
