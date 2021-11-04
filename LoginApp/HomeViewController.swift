//
//  HomeViewController.swift
//  LoginApp
//
//  Created by MAC on 01/11/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    


    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier:"cell")
        
        cell?.textLabel?.text = "\(indexPath.row)"
        
        return cell!
    }
    

}
