//
//  CollectionViewCell.swift
//  1_Test_TableView_CollectionView
//
//  Created by 1 on 2020/10/28.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    static var nib: UINib {
        return UINib(nibName: "CollectionViewCell", bundle: Bundle(for: self))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
