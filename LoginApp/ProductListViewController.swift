//
//  ProductListViewController.swift
//  LoginApp
//
//  Created by MAC on 03/11/21.
//


// Integrating data from array of Models in tableview


import UIKit

class ProductListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var products:[Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
        
        products = getProducts()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func getProducts()-> [Product] {
        let p1 = Product(name:"p11", price:100.0, description:"I am p1 product, I am p1 product, I am p1 product, I am p1 product, I am p1 product, ,I am p1 product, I am p1 product", imageUlr:"product1")
        
        let p2 = Product(name:"p2", price:101.0, description:"I am p2 product, I am p2 product, I am p2 product, I am p2 product, I am p2 product, I am p2 product, I am p2 productI am p2 product", imageUlr:"product2")
        
        let p3 = Product(name:"p3", price:102.0, description:"I am p3 product, I am p3 product, I am p3 product, I am p3 product,I am p3 product", imageUlr:"product3")
        
        let p4 = Product(name:"p4", price:103.0, description:"I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product, I am p4 product", imageUlr:"product4")
        
        let p5 = Product(name:"p5", price:103.0, description:"I am p5 product, I am p5 product, I am p5 productI am p5 product, I am p5 product, I am p5 product, I am p5 productI am p5 product, I am p5 product, I am p5 product, I am p5 product, I am p5 product, I am p5 productI am p5 product", imageUlr:"product4")
        
        let p6 = Product(name:"p6", price:103.0, description:"I am p6 product, I am p6 product, I am p6 productI am p6 product, I am p6 productI am p6 product, I am p6 product, I am p6 productI am p6 product", imageUlr:"product4")
        
        
        let p7 = Product(name:"p7", price:103.0, description:nil, imageUlr:"product4")
        
        
        let p8 = Product(name:"p8", price:103.0, description:nil, imageUlr:"product4")
    
       return  [p1, p2 , p3, p4, p1, p2 , p3, p4, p5, p6, p7, p8]
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

    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        let settingViewController = segue.destination as! SettingViewController
        
        settingViewController.product = sender as? Product
    }
}

extension ProductListViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier:"productCell", for: indexPath) as! ProductTableViewCell
        
        
        
        guard let _products = products else {
            return cell
        }
        
        let product = _products[indexPath.row]
        cell.productName.text = product.name
        cell.productImageView.image = UIImage(named:product.imageUlr ?? "")
        
        cell.productDetails.text = product.description  ?? ""
      
        
        //
//        if  let _products = products {
//            let product = _products[indexPath.row]
//            cell.productName.text = product.name
//            cell.productImageView.image = UIImage(named:product.imageUlr ?? "")
//            cell.productDetails.text = product.description
//        }
//        else {
//            cell.productName.text = ""
//            cell.productImageView.image = nil
//            cell.productDetails.text = ""
//        }
      
        return cell
        
        
    }
}

extension ProductListViewController:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        performSegue(withIdentifier:"", sender: nil)
    
        performSegue(withIdentifier:"settingViewController", sender: products?[indexPath.row])
    }
}


