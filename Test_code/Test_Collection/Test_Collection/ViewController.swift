//
//  ViewController.swift
//  Test_Collection
//
//  Created by 1 on 2020/10/28.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {

    
    var mycollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        makeMyCollectionView()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mycollectionView.collectionViewLayout.invalidateLayout()
    }
    
    func makeMyCollectionView() {
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        // section與 section 之間的距離 (如果只有一個section, 可以想像成 frame)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        //cell的寬、高
        layout.itemSize = CGSize(width: (self.view.frame.size.width - 30) / 2, height: 120)
        // 滑動方向為「垂直」的話即「上下」的間距;滑動方向為「平行」則為「左右」的間距
        layout.minimumLineSpacing = CGFloat(integerLiteral: 10)
        // 滑動方向為「垂直」的話即「左右」的間距;滑動方向為「平行」則為「上下」的間距
        layout.minimumInteritemSpacing = CGFloat(integerLiteral: 10)
        //滑動方向預設為垂直。注意若設為垂直，則cell的加入方式為由左至右，滿了才會換行；若是水平則由上往下，滿了才會換列
        //layout.scrollDirection = UICollectionView.ScrollDirection.vertical
        
        self.mycollectionView = UICollectionView(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: self.view.frame.size.height), collectionViewLayout: layout)
        self.mycollectionView.dataSource = self
        self.mycollectionView.delegate = self
        self.mycollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        self.mycollectionView.backgroundColor = UIColor.white
        self.view.addSubview(mycollectionView)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.orange :UIColor.brown
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("row: \(indexPath.row)")
    }

}

