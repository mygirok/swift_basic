//
//  ViewController.swift
//  CustomPopUp
//
//  Created by forworkyong on 2021/11/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var createPopUpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onCreatePopUpBtnClicked(_  sender: UIButton) {
        print("ViewController - onCreatePopUpBtnClicked")
        
        // call storyboard
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil )
        
        // get ViewController with storyboard
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "CustomPopUpVC") as! CustomPopUpViewController
        
        // style of show modal
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        
        // style of hide modal
        customPopUpVC.modalTransitionStyle = .crossDissolve
        
        customPopUpVC.moveBtnCompletionClosure = {
            print("moveBtnCompletionClosure")
            let moveUrl = URL(string: "https://www.google.com")
            self.myWebView.load(URLRequest(url: moveUrl!))
        }
        self.present(customPopUpVC, animated: true, completion: nil)
    }
    
}

