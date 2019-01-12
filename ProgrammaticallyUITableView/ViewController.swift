//
//  ViewController.swift
//  ProgrammaticallyUITableView
//
//  Created by claudio Cavalli on 12/01/2019.
//  Copyright © 2019 claudio Cavalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var screenSize = UIScreen.main.bounds
    
    var tableView  : UITableView! = {
        
        let myTableView = UITableView()
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        return myTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
        
    }
   
    override func viewDidAppear(_ animated: Bool) {
        view.addSubview(tableView)
    }

    func setTableView(){
        
        tableView.backgroundColor = UIColor.clear
        tableView.frame = CGRect(x: 0, y: screenSize.height / 10, width: screenSize.width , height: screenSize.height / 1.3)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.white
        tableView.separatorInset = .init()
        tableView.tableFooterView = UIView()
        tableView.isScrollEnabled = true
        tableView.showsVerticalScrollIndicator = false
        tableView.rowHeight = screenSize.height / 5
        tableView.reloadData()
        
    }
    
}



extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("sono 10 ")
        return 10
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        
        
        cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "MyCell")
        
        
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = "Table"
        
        
        cell.selectionStyle = .none
        cell.detailTextLabel?.text = "Example"
        cell.detailTextLabel?.textColor = UIColor.white
        cell.imageView?.image = UIImage(named: "Logo")
        
        return cell
    }
    
}
