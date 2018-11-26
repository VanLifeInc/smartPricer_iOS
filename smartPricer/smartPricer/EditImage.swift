//
//  EditImage.swift
//  smartPricer
//
//  Created by Justin Antony on 2018-11-11.
//  Copyright © 2018 Justin Antony. All rights reserved.
//

import UIKit

class EditImage: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var ViewImage: UIImageView!
    var newImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let picture = newImage {
            ViewImage.contentMode = .scaleAspectFit
            ViewImage.image = picture
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
