//
//  ViewController.swift
//  Anita_Lab2
//
//  Created by Anita Conestoga on 2017-01-26.
//  Copyright © 2017 Anita Conestoga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate	 {

    @IBOutlet weak var imageView: UIImageView!

    @IBAction func changeImage(_ sender: AnyObject) {
        
        //OnCLick textField Text will appear in Text textLabel
        
        
        photoUILabel.text = photoTextField.text
        
        //This statement ensures textfield is blank when Condition is met.
        while (photoUILabel.text == photoTextField.text) {
                photoTextField.text = ""
        }
        
        let selectImage = UIImagePickerController()
        selectImage.delegate = self
        
        selectImage.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        //selectImage.allowsEditing = false
        self.present(selectImage, animated: true)
        {
            //Do nothing
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            imageView.image = selectImage
        }
        else
        {
            //Display Error Message
        }
        self.dismiss(animated: true, completion: nil)
    }
    

    @IBOutlet weak var photoUILabel: UILabel!
    @IBOutlet weak var photoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = UIImage(named:"KC")
        photoTextField.text = ""
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

