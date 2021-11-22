//
//  RegisterViewController.swift
//  RegisterViewController
//
//  Created by forworkyong on 2021/11/22.
//

import UIKit

class RegisterViewController: UIViewController {
        
    @IBOutlet var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        // pop navigationController view
        self.navigationController?.popViewController(animated: true)
    }
    
}
