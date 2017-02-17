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
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var memes = [Meme]()

    override func viewDidLoad() {
        memes = appDelegate.memes
        
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellSavedMemes")!
        print("cell for row triggered")
        cell.imageView?.image = memes[indexPath.row].memedimage
        return cell
    }

    
   
    
}
