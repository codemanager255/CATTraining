//
//  SettingViewController.swift
//  LoginApp
//
//  Created by MAC on 29/10/21.
//

import UIKit

class SettingViewController: UIViewController {

    let employes = ["Kiran", "Mahesh", "David", "Suman", "Geethanjali"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.dataSource = self
        
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

extension SettingViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"employeeCell", for: indexPath)
        
        cell.textLabel?.text = employes[indexPath.row]
        return cell
    }
    
    
}
