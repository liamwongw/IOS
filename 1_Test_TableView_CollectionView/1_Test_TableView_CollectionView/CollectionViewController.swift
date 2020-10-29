//
//  CollectionViewController.swift
//  1_Test_TableView_CollectionView
//
//  Created by 1 on 2020/10/28.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    @IBOutlet weak var winLoseLabel: UILabel!
    
    var imageWinAndLose:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(CollectionViewCell.nib, forCellWithReuseIdentifier: "Cell")

        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

 
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageWinAndLose.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.orange :UIColor.brown
        if imageWinAndLose[indexPath.row] == "平手" {
            cell.backgroundColor = UIColor.gray
        }else if imageWinAndLose[indexPath.row] == "輸"{
            cell.backgroundColor = UIColor.red
        }else{
            cell.backgroundColor = UIColor.black
        }
        cell.imageView.image = UIImage(named: imageWinAndLose[indexPath.row])
        // Configure the cell
        
        return cell
    }



}
