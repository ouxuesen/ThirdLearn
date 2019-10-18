//
//  TextureTableViewController.swift
//  ThirdLearn
//
//  Created by ou xuesen on 2019/10/14.
//  Copyright © 2019 ou xuesen. All rights reserved.
//

import UIKit

class TextureTableViewController: UITableViewController {

    var souceArray:[String] = Array().with{
        $0.append("view")
        $0.append("TableView")
        $0.append("CollectionView")
        $0.append("PageViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return souceArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = souceArray[indexPath.row]
        return cell!
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nextPUSHVC(index: indexPath)
    }
    func nextPUSHVC(index:IndexPath)  {
        var vicontroll:UIViewController?
        switch souceArray[index.row] {
         case "view":
           vicontroll = TextureViewController()
        default: break
            
        }
        if vicontroll != nil {
            navigationController?.pushViewController(vicontroll!, animated: true)
        }
    
    }
    func textNavigationPush(index:IndexPath) {
        
    }

}
