//
//  SecondViewController.swift
//  smartPricer
//
//  Created by Justin Antony on 2018-09-09.
//  Copyright © 2018 Justin Antony. All rights reserved.
//

import UIKit

class MyStuffViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
    let imagePicker = UIImagePickerController()
    
    var imageView: UIImage!
    
    @IBAction func takePhoto(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    @IBAction func selectPhoto(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Local variable inserted by Swift 4.2 migrator.
        let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage

        imageView = pickedImage
        
        dismiss(animated: true) {self.performSegue(withIdentifier: "toEditImage", sender: (Any).self)}
       
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toEditImage" {
            let dvc = segue.destination as! EditImage
            dvc.newImage = imageView
        }
        
    }

}


// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKeyDictionary(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
	return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
	return input.rawValue
}
