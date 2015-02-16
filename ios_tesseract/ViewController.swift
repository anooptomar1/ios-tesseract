//
//  ViewController.swift
//  ios_tesseract
//
//  Created by Anoop tomar on 2/16/15.
//  Copyright (c) 2015 devtechie.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var resultText: UITextView!
    
    @IBAction func snapAction(sender: AnyObject) {
        
        let imagePickerActionSheet = UIAlertController(title: "Snap/Upload an Image", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet);
        
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            let cameraButton = UIAlertAction(title: "Take Photo", style: UIAlertActionStyle.Default, handler: {(alert)-> Void in
                let imagePicker = UIImagePickerController();
                imagePicker.delegate = self;
                imagePicker.sourceType = .Camera;
                self.presentViewController(imagePicker, animated: true, completion: nil);
            });
            imagePickerActionSheet.addAction(cameraButton)
        }
        
        let libraryButton = UIAlertAction(title: "Choose from photo library", style: UIAlertActionStyle.Default, handler: {(alert) -> Void in
            let imagePicker = UIImagePickerController();
            imagePicker.delegate = self;
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary;
            self.presentViewController(imagePicker, animated: true, completion: nil)
        });
        
        imagePickerActionSheet.addAction(libraryButton);
        
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil);
        imagePickerActionSheet.addAction(cancelButton);
        
        presentViewController(imagePickerActionSheet, animated: true, completion: nil);
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

