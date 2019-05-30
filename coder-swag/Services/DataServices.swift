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
    
    //Categories Data :-
    private let categories: [Category] = [Category(title: "SHIRTS", imageName: "shirts"), Category(title: "HOODIES", imageName: "hoodies"), Category(title: "HATS", imageName: "hats"), Category(title: "DIGITAL", imageName: "digital")]
    
    //fetching Categories data
    func getCategories() -> [Category] {
        return categories
    }
    
    //Product Data: -
    
    //(1)SHIRTS
    private let shirts = [Product(title: "Devslops Logo Shirt Black", price: "$18", imageName: "shirt01"),
                           Product(title: "Devslops Badge Shirt Light grey", price: "$19", imageName: "shirt02"),
                           Product(title: "Devslops Logo Shirt Red", price: "$18", imageName: "shirt03"),
                           Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04"),
                           Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05")]
    //(2)Hoodies
    private let hoodies = [Product(title: "Devslops Logo Hoodie Grey ", price: "$32", imageName: "hoodie01"),
                           Product(title: "Devslops Logo Hoodie Grey", price: "$32", imageName: "hoodie01")]
    
    //(3)Hat
    private let hats = [Product(title: "Devslops Logo Graphic Beanie", price: "$18", imageName: "hat01"),
                        Product(title: "Devslops Logo Hat Black", price: "$22", imageName: "hat02"),
                        Product(title: "Devslops Logo Hat White", price: "$22", imageName: "hat03"),
                        Product(title: "Devslops Logo Snapback", price: "$20", imageName: "hat04")]
    
    //(4)Digital
    private let digitalGoods = [Product]()
    
    
    //Choose which Prodcut that should we get
    func getProducts(forCategoryTitle title: String) -> [Product] {
        
        switch title {
        case "SHIRTS":
           return getShirt()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        
        default:
            return [Product]()
        }
        
    }
        //fetching Products data
        
        func getShirt() -> [Product] {
            return shirts
        }
        func getHoodies() -> [Product] {
            return hoodies
        }
        func getHats() -> [Product] {
            return hats
        }
        func getDigitalGoods() -> [Product] {
            return digitalGoods
        }
    }

