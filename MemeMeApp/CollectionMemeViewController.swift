//
//  CollectionMemeViewController.swift
//  MemeMeApp
//
//  Created by Chi-Ying Leung on 2/16/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CollectionMemeViewController: UICollectionViewController {

    override func viewDidLoad() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        var memes = appDelegate.memes
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addMeme))
    }
    
    
    // change to IBAction? present VC is correct
    func addMeme() {
        var memeEditorVC = MemeEditorViewController()
        memeEditorVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        present(memeEditorVC, animated: true, completion: nil)
    }
    
}
