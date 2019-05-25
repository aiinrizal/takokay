//
//  ViewController.swift
//  THESISQ
//
//  Created by GTO on 15/05/2019.
//  Copyright © 2019 RapidThesisQ. All rights reserved.
//

import UIKit
import Gemini
import IQKeyboardManagerSwift

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    

    @IBOutlet weak var collectionView: GeminiCollectionView!
    
    
    let photos = ["01", "02", "03", "04","05"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.gemini
            .cubeAnimation()
            .cubeDegree(90)
    }
    
    // Call animation function


    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photos.count
    }
    
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gemCell", for: indexPath) as! MyCell
        
        cell.setCell(imageName: photos[indexPath.row])
        
        // Animate
        self.collectionView.animateCell(cell)
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // Animate
        self.collectionView.animateVisibleCells()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        // Animate
        if let cell = cell as? MyCell {
            self.collectionView.animateCell(cell)
        }
        
    }


}
