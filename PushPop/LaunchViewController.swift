//
//  LaunchViewController.swift
//  PushPop
//
//  Created by Nhật Minh on 11/23/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var skip: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var ten: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0
        text!.alpha = 0
        ten!.alpha = 0
        skip.isEnabled = false
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.logo!.alpha = 1
        }, completion: { (finished) in
            UIView.animate(withDuration: 4, animations: {
                self.text!.center = CGPoint(x: self.logo!.center.x, y: 100)
                self.text!.alpha = 1
            }, completion: { (finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.ten!.center = CGPoint(x: self.logo!.center.x, y: 600)
                    self.ten!.alpha = 1
                    self.skip.isEnabled = true
                })
            })
        })
    }
    
    @IBAction func action_skip(_ sender: UIButton) {
        let v1 = self.storyboard?.instantiateViewController(withIdentifier: "V1") as! ViewController
        
        self.navigationController?.pushViewController(v1, animated: true)
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
