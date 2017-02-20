//
//  MemeDetailViewController.swift
//  MemeMeApp
//
//  Created by Chi-Ying Leung on 2/19/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController: UIViewController {
    var meme = Meme()

    @IBOutlet weak var memedImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.memedImageView.image = meme.memedImage
    }
}
