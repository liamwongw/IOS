//
//  RecordTableViewController.swift
//  1_Test_TableView_CollectionView
//
//  Created by 1 on 2020/10/27.
//

import UIKit

class RecordTableViewController: UITableViewController {
    
    var recordListInTableView: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(RecordTableViewCell.nib, forCellReuseIdentifier: "RecordTableViewCell")
        
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordListInTableView.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tablecell = tableView.dequeueReusableCell(withIdentifier: "RecordTableViewCell", for: indexPath) as! RecordTableViewCell
        tablecell.textLabel?.text = recordListInTableView[indexPath.row]

        return tablecell
    }
}
