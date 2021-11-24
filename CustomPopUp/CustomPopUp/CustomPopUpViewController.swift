//
//  CustomPopUpViewController.swift
//  CustomPopUpViewController
//
//  Created by forworkyong on 2021/11/24.
//

import UIKit

class CustomPopUpViewController: UIViewController {
    
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var moveBtn: UIButton!
    @IBOutlet var bgBtn: UIButton!
    
    var moveBtnCompletionClosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.cornerRadius = 30
        moveBtn.layer.cornerRadius = 10
    }
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   @IBAction func onMoveBtnClicked(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        // call complection
        if let moveBtnCompletionClosure = moveBtnCompletionClosure {
            
            // tell main
            moveBtnCompletionClosure()
        }
        
    }
    
}
