//
//  TableMemeViewController.swift
//  MemeMeApp
//
//  Created by Chi-Ying Leung on 2/16/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation
import UIKit

class TableMemeViewController: UITableViewController {
    
    override func viewDidLoad() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addMeme))
    }
    
    func addMeme() {
        var memeEditorVC = MemeEditorViewController()
        memeEditorVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        present(memeEditorVC, animated: true, completion: nil)
    }
    
    
    
}
