//
//  ViewController.swift
//  coder-swag
//
//  Created by Os! on 26/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //IBOutlet connection
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
        //change status bar color after adding view contoller-based on status bar in info.plist
        UIApplication.shared.statusBarStyle = .lightContent
      
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        let category = DataServices.instance.getCategories()[indexPath.row]
        cell.updateView(category: category)
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         let category: Category = DataServices.instance.getCategories()[indexPath.row]
            
            performSegue(withIdentifier: "goToProductsVC", sender: category)
            
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //to make back button only arrow without text (in ProductVC)
        let backBtn = UIBarButtonItem()
        backBtn.title = ""
        navigationItem.backBarButtonItem = backBtn
        
        if segue.identifier == "goToProductsVC" {
            let VC = segue.destination as! ProductsVC
            
            assert(sender as? Category != nil)
            VC.initProducts(category: sender as! Category)
        }
    }

}

