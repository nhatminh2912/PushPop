//
//  ViewController.swift
//  PushPop
//
//  Created by Nhật Minh on 11/23/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    
    
    var users = ["minh":"1"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func action_Push(_ sender: UIButton) {
        
    if let password = users[tf_user.text!]
        {
            if password == tf_password.text
            {
                let v2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as! View2ViewController
                
                self.navigationController?.pushViewController(v2, animated: true)
            }
            else
            {
                print("Log in pls!")
            }
        }
        else
            {
            
                print("Sign up pls!")
            }
        }
        
    @IBAction func action_signup(_ sender: UIButton)
    {
        if let dangky = users[tf_user.text!]
        {
            print("tai khoan da ton tai")
        }
            
        else
        {
            users[tf_user.text!] = tf_password.text
            print("dang ky thanh cong")
        }
        
        
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
