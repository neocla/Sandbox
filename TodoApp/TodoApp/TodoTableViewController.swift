//
//  TodoTableViewController.swift
//  TodoApp
//
//  Created by on 2014/08/11.
//  Copyright (c) 2014年 Atsuhi Matsutani. All rights reserved.
//

import Foundation

import UIKit

class TodoTableViewController : UIViewController, UITableViewDataSource {
    var tableView : UITableView?
    var todo = TodoDataManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let header = UIImageView(frame: CGRect(x: 0, y: 0, width: 320, height: 64))
        header.image = UIImage(named:"header")
        
        let title = UILabel(frame: CGRect(x: 10, y: 20, width: 310, height: 44))
        title.text = "Todo List"
        header.addSubview(title)
        self.view.addSubview(header)
        
        let screenWidth = UIScreen.mainScreen().bounds.size.height
        self.tableView = UITableView(frame: CGRect(x: 0, y: 60, width: 320, height: screenWidth - 60))
        self.tableView!.dataSource = self
        
        self.view.addSubview(self.tableView!)
        
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let row = indexPath.row
        
        let cell = UITableViewCell(style: .Default, reuseIdentifier: nil)
//        cell.textLabel.text = todo.todoList[row].title
        cell.textLabel.text = "todo"
        return cell
    }
}
