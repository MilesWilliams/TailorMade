//
//  credentialsViewController.swift
//  Tailor Made
//
//  Created by MIles Work on 2017/08/10.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import UIKit

class credentialsViewController: UIViewController {

    @IBOutlet var signUpFormBTN: UIButton!
    @IBOutlet var loginFormBTN: UIButton!
    @IBOutlet var loginFormView: UIView!
    @IBOutlet var loginUsernameTextField: UITextField!
    
    @IBOutlet var signUpForm: UIView!
    @IBOutlet var submitBTN: UIButton!
    
    @IBOutlet var loginPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginFormView.alpha = 0
        signUpForm.alpha = 1
        let goldOpaque = UIColor(red: 178/255, green: 152/255, blue: 93/255, alpha: 0.35).cgColor
        let gold = UIColor(red: 178/255, green: 152/255, blue: 93/255, alpha: 1)
//        let grey = UIColor(red: 149/255, green: 152/255, blue: 154/255, alpha: 0.35)
        submitBTN.layer.borderColor = goldOpaque
        submitBTN.layer.borderWidth = 1
        signUpFormBTN.isSelected = true;
        let border = CALayer()
        let border1 = CALayer()
        let width = CGFloat(2.0)
        
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: loginUsernameTextField.frame.size.height - width, width:  loginUsernameTextField.frame.size.width, height: loginUsernameTextField.frame.size.height)
        
        border1.borderColor = UIColor.darkGray.cgColor
        border1.frame = CGRect(x: 0, y: loginPasswordTextField.frame.size.height - width, width:  loginPasswordTextField.frame.size.width, height: loginPasswordTextField.frame.size.height)
        
        border.borderWidth = width
        border.borderColor = goldOpaque
        border1.borderWidth = width
        border1.borderColor = goldOpaque
        
        loginUsernameTextField.layer.addSublayer(border)
        loginUsernameTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        loginUsernameTextField.textColor = UIColor.white
        loginUsernameTextField.layer.masksToBounds = true
        
        loginPasswordTextField.layer.addSublayer(border1)
        loginPasswordTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        loginPasswordTextField.textColor = UIColor.white
        loginPasswordTextField.layer.masksToBounds = true
        
        signUpFormBTN.setTitleColor(gold, for: UIControlState.selected)
        loginFormBTN.setTitleColor(gold, for: UIControlState.selected)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signUpFormBTN(_ sender: Any) {
        if (loginFormView.alpha == 1) {
            loginFormView.alpha = 0
            signUpForm.alpha = 1
        }
        print("clicked sign up")
        loginFormBTN.isSelected = false
        signUpFormBTN.isSelected = true
    }
    @IBAction func loginFormBTN(_ sender: Any) {
        loginFormView.alpha = 1
        loginFormBTN.isSelected = true
        signUpFormBTN.isSelected = false
        signUpForm.alpha = 0
        print("clicked login")
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
