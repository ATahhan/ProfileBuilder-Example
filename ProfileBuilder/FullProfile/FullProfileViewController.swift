//
//  FullProfileViewController.swift
//  ProfileBuilder
//
//  Created by Mohammed Salah on 11/1/18.
//  Copyright © 2018 Mohammed Salah. All rights reserved.
//

import UIKit

class FullProfileViewController: UIViewController {

    // MARK: - Vars
    var user:UserProfile?
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblExtraInfo: UILabel!
    @IBOutlet weak var contanierView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        // Add data to views
        imgProfile.image = user?.image
        lblFirstName.text = user?.firstName
        lblLastName.text = user?.lastName
        lblExtraInfo.text = user?.extraInfo
    }
    
    
    @IBAction func didPressShare(_ sender: UIButton) {
        let image = screenShotMethod()
        
        // TODO: Create a `UIActivityViewController`, pass it `image` in an array and present it.
        let imageShare = [image]
        let activityViewController = UIActivityViewController(activityItems: imageShare , applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    
}


extension FullProfileViewController {
    
    func screenShotMethod() -> UIImage {
        //Create the UIImage
        UIGraphicsBeginImageContext(self.contanierView.frame.size)
        self.contanierView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        //Return image
        return image!
    }
    
}
