//
//  MainViewController.swift
//  ThirdLearn
//
//  Created by ou xuesen on 2019/10/14.
//  Copyright © 2019 ou xuesen. All rights reserved.
//

import UIKit
import Then
import SnapKit
import Alamofire
class MainViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var souceArray:[String] = Array().with{
        $0.append("Texture")
        $0.append("测试2")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       title = "ThirdLearn"
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MainViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        souceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = souceArray[indexPath.row]
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(TextureTableViewController(), animated: true)
    }
   
}
