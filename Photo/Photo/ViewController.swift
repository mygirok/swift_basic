//
//  ViewController.swift
//  Photo
//
//  Created by forworkyong on 2021/11/25.
//

import UIKit
import YPImagePicker

class ViewController: UIViewController {

    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet var profileChangeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.profileImage.layer.cornerRadius = profileImage.frame.height / 2
        self.profileChangeBtn.layer.cornerRadius = 10
        
        // setting button click
        self.profileChangeBtn.addTarget(self, action: #selector(onProfileChangeBtnClicked), for: .touchUpInside)
    }
    
    // after click
    @objc fileprivate func onProfileChangeBtnClicked() {
        print("ViewController - onProfileChangeBtnClicked() - called")
        
        // camera library setting
        var config = YPImagePickerConfiguration()
        config.screens = [.library, .photo, .video]
        
        let picker = YPImagePicker(configuration: config)
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage) // Transformed image, can be nil
                print(photo.exifMeta) // Print exif meta data of original image.
                
                self.profileImage.image = photo.image
            }
            picker.dismiss(animated: true, completion: nil)
        }
        present(picker, animated: true, completion: nil)

        
    }

}

