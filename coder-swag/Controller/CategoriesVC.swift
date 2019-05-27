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


}

