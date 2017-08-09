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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        enterButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func enterButton() {
        self.welcomeTextLabel.alpha = 0
        self.welcomeTextLabel.fadeOut(completion: {
            (finished: Bool) -> Void in
            self.welcomeTextLabel.text = "Welcome..."
            self.welcomeTextLabel.fadeIn()
            self.welcomeTextLabel.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.welcomeTextLabel.text = "Enter"
                self.welcomeTextLabel.fadeIn()
            })
        })

    }
    
}

