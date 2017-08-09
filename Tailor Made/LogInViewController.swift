//
//  LogInViewController.swift
//  Tailor Made
//
//  Created by MIles Work on 2017/08/09.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var submitBTN: UIButton!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let goldOpaque = UIColor(red: 178/255, green: 152/255, blue: 93/255, alpha: 0.35).cgColor
        submitBTN.layer.borderColor = goldOpaque
        submitBTN.layer.borderWidth = 1
        let border = CALayer()
        let border1 = CALayer()
        let width = CGFloat(1.0)
        
        border.frame = CGRect(x: 0, y: usernameTextField.frame.size.height - width, width:  usernameTextField.frame.size.width, height: usernameTextField.frame.size.height)
        border1.frame = CGRect(x: 0, y: usernameTextField.frame.size.height - width, width:  usernameTextField.frame.size.width, height: usernameTextField.frame.size.height)



        border.borderWidth = width
        border.borderColor = goldOpaque
        border1.borderWidth = width
        border1.borderColor = goldOpaque
        
        usernameTextField.layer.addSublayer(border1)
        usernameTextField.font = UIFont(name: "Raleway-Thin", size: 20)
        usernameTextField.textColor = UIColor.white
        usernameTextField.layer.masksToBounds = true
        
        passwordTextField.layer.addSublayer(border)
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
