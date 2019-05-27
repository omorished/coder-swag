//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Os! on 26/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    //IBOutlets
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLbl: UILabel!

    func updateView(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryLbl.text = category.title
    }


}
