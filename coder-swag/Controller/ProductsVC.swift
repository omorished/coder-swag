//
//  ProductsVCViewController.swift
//  coder-swag
//
//  Created by Os! on 30/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    //Variables
    private(set) public var productsList = [Product]()
    
    //IBOutlet Connection
    @IBOutlet weak var productsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
        
    }
    
    func initProducts(category: Category) {
        
        productsList = DataServices.instance.getProducts(forCategoryTitle: category.title)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print("The count \(productsList.count)")
        return productsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        cell.updateView(product: productsList[indexPath.row])
        
        return cell
    }
    

}
