//
//  MyCell.swift
//  THESISQ
//
//  Created by GTO on 23/05/2019.
//  Copyright © 2019 RapidThesisQ. All rights reserved.
//

import Foundation
import Gemini
import UIKit

class MyCell: GeminiCell{
    
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    func setCell(imageName: String){
        mainImageView.image = UIImage(named: imageName)
    }
}
