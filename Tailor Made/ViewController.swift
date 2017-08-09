//
//  ViewController.swift
//  Tailor Made
//
//  Created by MIles Work on 2017/08/09.
//  Copyright © 2017 StudioRepublika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var background: UIImageView!
    @IBOutlet var welcomeTextLabel: UITextField!
    @IBOutlet var loginBTN: UIButton!
    @IBOutlet var signupBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let gold = UIColor(red: 178/255, green: 152/255, blue: 93/255, alpha: 1).cgColor
        let goldOpaque = UIColor(red: 178/255, green: 152/255, blue: 93/255, alpha: 0.4).cgColor
        self.welcomeTextLabel.alpha = 0
        self.welcomeTextLabel.font = UIFont(name: "Raleway-Thin", size: 20)
        self.loginBTN.titleLabel?.font = UIFont(name: "Raleway-Thin", size: 16)
        self.signupBTN.titleLabel?.font = UIFont(name: "Raleway-Thin", size: 16)!
        self.welcomeTextLabel.text = "Welcome..."
        self.loginBTN.alpha = 0
        self.loginBTN.layer.borderWidth = 1
        self.loginBTN.layer.borderColor = goldOpaque
        self.loginBTN.layer.backgroundColor = goldOpaque
        self.signupBTN.alpha = 0
        self.signupBTN.layer.borderWidth = 1
        self.signupBTN.layer.borderColor = goldOpaque


    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.welcomeTextLabel.fadeIn(delay:0.5)
        self.welcomeTextLabel.fadeOut(delay: 1, completion: {
            (finished: Bool) -> Void in
            self.enterButton()
        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func enterButton() {

        self.loginBTN.fadeIn()
        self.signupBTN.fadeIn()

    }
    @IBAction func signUp(_ sender: UIButton) {
        performSegue(withIdentifier: "signupSegue", sender: self)
    }
    @IBAction func login(_ sender: UIButton) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    
}

