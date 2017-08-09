//
//  SignUPViewController.swift
//  Tailor Made
//
//  Created by MIles Work on 2017/08/09.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import UIKit

class SignUPViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var userNameTextField: UITextField!

    @IBOutlet var reptPasswordTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var submitBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let goldOpaque = UIColor(red: 178/255, green: 152/255, blue: 93/255, alpha: 0.35).cgColor
        submitBTN.layer.borderColor = goldOpaque
        submitBTN.layer.borderWidth = 1
        let border = CALayer()
        let border1 = CALayer()
        let border2 = CALayer()
        let border3 = CALayer()
        let width = CGFloat(2.0)

        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: userNameTextField.frame.size.height - width, width:  userNameTextField.frame.size.width, height: userNameTextField.frame.size.height)
        
        border1.borderColor = UIColor.darkGray.cgColor
        border1.frame = CGRect(x: 0, y: userNameTextField.frame.size.height - width, width:  userNameTextField.frame.size.width, height: userNameTextField.frame.size.height)
        
        border2.borderColor = UIColor.darkGray.cgColor
        border2.frame = CGRect(x: 0, y: userNameTextField.frame.size.height - width, width:  userNameTextField.frame.size.width, height: userNameTextField.frame.size.height)
        
        border3.borderColor = UIColor.darkGray.cgColor
        border3.frame = CGRect(x: 0, y: userNameTextField.frame.size.height - width, width:  userNameTextField.frame.size.width, height: userNameTextField.frame.size.height)
        
        border.borderWidth = width
        border.borderColor = goldOpaque
        border1.borderWidth = width
        border1.borderColor = goldOpaque
        border2.borderWidth = width
        border2.borderColor = goldOpaque
        border3.borderWidth = width
        border3.borderColor = goldOpaque

        userNameTextField.layer.addSublayer(border)
        userNameTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        userNameTextField.textColor = UIColor.white
        userNameTextField.layer.masksToBounds = true
        
        emailTextField.layer.addSublayer(border1)
        emailTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        emailTextField.textColor = UIColor.white
        emailTextField.layer.masksToBounds = true
        
        reptPasswordTextField.layer.addSublayer(border2)
        reptPasswordTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        reptPasswordTextField.textColor = UIColor.white
        reptPasswordTextField.layer.masksToBounds = true
        
        passwordTextField.layer.addSublayer(border3)
        passwordTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        passwordTextField.textColor = UIColor.white
        passwordTextField.layer.masksToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
