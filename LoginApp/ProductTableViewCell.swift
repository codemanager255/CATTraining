//
//  ProductTableViewCell.swift
//  LoginApp
//
//  Created by MAC on 03/11/21.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productDetails: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
