//
//  ViewController.swift
//  MemeMeApp
//
//  Created by Chi-Ying Leung on 2/15/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePickerView: UIImageView!
    
    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    @IBAction func pickAnAlbumImage(sender: AnyObject) {
        let pickerController = UIImagePickerController()
        self.present(pickerController, animated: true, completion: nil)
    }


}

