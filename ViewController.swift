//
//  ViewController.swift
//  ImagePicker
//
//  Created by Vinny Carpenter on 12/29/14.
//  Copyright (c) 2014 Vinny Carpenter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func imageButtonPressed(sender: AnyObject) {
        
        var imagePicker = UIImagePickerController()
        
        var sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum
        
        if (UIImagePickerController.isSourceTypeAvailable(sourceType)) {
            
            imagePicker.sourceType = sourceType
            imagePicker.delegate = self
            
            presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]){
        
        var image = info[UIImagePickerControllerOriginalImage] as UIImage
        
        imageView.image = image
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        println("Cancel")
        dismissViewControllerAnimated(true, completion: nil)
        
    }
}

