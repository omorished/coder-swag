//
//  Product.swift
//  coder-swag
//
//  Created by Os! on 27/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    //IBOutlet Connections
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    func updateView(product: Product) {
        
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
        
    }
    
}
