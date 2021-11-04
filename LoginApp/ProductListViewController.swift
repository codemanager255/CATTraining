//
//  ProductListViewController.swift
//  LoginApp
//
//  Created by MAC on 03/11/21.
//

import UIKit

class ProductListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")

    }
   
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillDisappear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("viewDidDisappear")


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

extension ProductListViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier:"productCell", for: indexPath) as! ProductTableViewCell
        
        cell.productName.text = "product \(indexPath.row)"
        
        cell.productImageView.image = UIImage(named:"product\(indexPath.row + 1)")
        
        cell.productDetails.text = "Product Details for \(indexPath.row), avaible in store , its in red color, its good proudct Product Details for \(indexPath.row), avaible in store , its in red color, its good proudct"
        return cell
        
        
    }
}

extension ProductListViewController:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier:"settingViewController", sender: nil)
    }
}
