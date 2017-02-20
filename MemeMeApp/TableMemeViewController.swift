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
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addMeme))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        memes = appDelegate.memes
        
        if memes.count < 1 {
            var memeEditorVC = MemeEditorViewController()
            memeEditorVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
            present(memeEditorVC, animated: true, completion: nil)
        }
        
        tableView!.reloadData()
    }
    
    // change to IBAction? present VC is correct
    func addMeme() {
        var memeEditorVC = MemeEditorViewController()
        memeEditorVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        present(memeEditorVC, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellSavedMemes") as! TableMemeViewCell
        
        cell.memedImage.image = memes[indexPath.row].memedImage
        cell.memedTopLabel.text = memes[indexPath.row].topText
        cell.memedBottomLabel.text = memes[indexPath.row].bottomText
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailVC.meme = memes[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
    }

    
   
    
}
