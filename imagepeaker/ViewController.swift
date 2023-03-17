//
//  ViewController.swift
//  imagepeaker
//
//  Created by R & W on 10/06/16.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var myimg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _  = "abc"
        let b = UserDefaults.standard
        b.set(["21","55","66","44","99"], forKey: "abcd")
        b.set([34,56,23,67,23], forKey: "abc")
        print(b.array(forKey: "abcd") as! [String])
        print(b.array(forKey: "abc") as! [Int])
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let edited = info[.editedImage] ?? info[.originalImage] {
            myimg.image = edited as? UIImage
        }
        self.dismiss(animated: true)
    }
    
    @IBAction func gallerybut() {
        let a = UIImagePickerController()
        a.sourceType = .photoLibrary
        a.allowsEditing = true
        
        a.delegate = self
        self.present(a, animated: true)
    }
}

