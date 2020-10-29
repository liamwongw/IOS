//
//  ViewController.swift
//  1_Test_TableView_CollectionView
//
//  Created by 1 on 2020/10/27.
//

import UIKit

class ViewController: UIViewController {
    
    //拳型
    let rps:[String] = ["paper", "rock", "scissors"]
    var winAndLose:[String] = []
    
    // 紀錄陣列
    var recordListRps: [String] = []
    
    // 猜拳圖片
    @IBOutlet weak var com: UIImageView!
    @IBOutlet weak var own: UIImageView!
    
    // 結果
    @IBOutlet weak var resultLabel: UILabel!
    
     // 開始猜拳
    @IBAction func mora(_ sender: UIButton) {
        // 隨機亂數 取出list
        let comIndex = Int(arc4random_uniform(UInt32(rps.count)))
        let ownIndex = Int(arc4random_uniform(UInt32(rps.count)))
        
        // 顯示圖片
        com.image = UIImage(named: rps[comIndex])
        own.image = UIImage(named: rps[ownIndex])
        
        checkWinner(ownIndex: ownIndex, comIndex: comIndex)

        print(winAndLose)
        print(recordListRps)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //判斷
    func checkWinner(ownIndex :Int, comIndex: Int){
        // 勝負
        let checkWinner = (ownIndex, comIndex)
        switch checkWinner {
        case let (x, y) where x == y:
            recordListRps.append("我方：" + rps[ownIndex] + " 電腦：" + rps [comIndex] + " / 結果：平手")
            winAndLose.append("平手")
            return resultLabel.text! = "平手"
        case (0,1):
            recordListRps.append("我方：" + rps[ownIndex] + " / 電腦：" + rps [comIndex] + " / 結果：我方勝利")
            winAndLose.append("贏")
            return resultLabel.text! = "我方勝利"
        case (0,2):
            recordListRps.append("我方：" + rps[ownIndex] + " / 電腦：" + rps [comIndex] + " / 結果：電腦勝利")
            winAndLose.append("輸")
            return resultLabel.text! = "電腦勝利"
        case (1,0):
            recordListRps.append("我方：" + rps[ownIndex] + " / 電腦：" + rps [comIndex] + " / 結果：電腦勝利")
            winAndLose.append("輸")
            return resultLabel.text! = "電腦勝利"
        case (1,2):
            recordListRps.append("我方：" + rps[ownIndex] + " / 電腦：" + rps [comIndex] + " / 結果：我方勝利")
            winAndLose.append("贏")
            return resultLabel.text! = "我方勝利"
        case (2,0):
            recordListRps.append("我方：" + rps[ownIndex] + " / 電腦：" + rps [comIndex] + " / 結果：我方勝利")
            winAndLose.append("贏")
            return resultLabel.text! = "我方勝利"
        case (2,1):
            recordListRps.append("我方：" + rps[ownIndex] + " / 電腦：" + rps [comIndex] + " / 結果：電腦勝利")
            winAndLose.append("輸")
            return resultLabel.text! = "電腦勝利"
        case (_, _):
            return
        }
        
    }
    
    // 下一頁資訊
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_rps_to_table" {
            let table_VC = segue.destination as! RecordTableViewController
            if recordListRps != [] {
                table_VC.recordListInTableView = recordListRps
            } else {
                table_VC.recordListInTableView = ["比賽尚未開始"]
            }
        }
        if segue.identifier == "segue_rps_to_collection"{
            let cellection_VC = segue.destination as! CollectionViewController
            cellection_VC.imageWinAndLose = winAndLose
        }
    }


}

