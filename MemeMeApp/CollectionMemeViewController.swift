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
    var memes = [Meme]()

    override func viewDidLoad() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addMeme))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView?.reloadData()
    }
    
    // change to IBAction? present VC is correct
    func addMeme() {
        var memeEditorVC = MemeEditorViewController()
        memeEditorVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        present(memeEditorVC, animated: true, completion: nil)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellSavedMemes", for: indexPath) as! CollectionMemeViewCell
        cell.memeImageView.image = memes[indexPath.row].memedImage
        return cell
    }
    
}
