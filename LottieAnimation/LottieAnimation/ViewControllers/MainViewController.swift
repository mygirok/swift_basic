//
//  ViewController.swift
//  LottieAnimation
//
//  Created by forworkyong on 2021/11/18.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Main Page"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "448-ripple-loading-animation")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
        return animView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        // run animation
        animationView.play { (finish) in
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

