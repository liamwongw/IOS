//
//  RecordTableViewCell.swift
//  1_Test_TableView_CollectionView
//
//  Created by 1 on 2020/10/27.
//

import UIKit

class RecordTableViewCell: UITableViewCell {
    
    static var nib: UINib {
        return UINib(nibName: "RecordTableViewCell", bundle: Bundle(for: self))
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
