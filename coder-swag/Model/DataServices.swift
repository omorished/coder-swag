//
//  DataServices.swift
//  coder-swag
//
//  Created by Os! on 27/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import Foundation

class DataServices {
    
    static let instance = DataServices() //singelton
    
    private let categories: [Category] = [Category(title: "SHIRTS", imageName: "shirts"), Category(title: "HOODIES", imageName: "hoodies"), Category(title: "HATS", imageName: "hats"), Category(title: "DIGITAL", imageName: "digital")]
    
    func getCategories() -> [Category] {
        return categories
    }
}
