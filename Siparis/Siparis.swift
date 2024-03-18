//
//  Siparis.swift
//  Siparis
//
//  Created by Dijitalvarliklar on 18.03.2024.
//

import Foundation

class Siparis {
    
    var id:Int?
    var name:String?
    var fiyat:Double?
    var image:String?
    
    init (){}
    
    init(id:Int, name:String, fiyat:Double, image:String) {
        self.id = id
        self.name = name
        self.fiyat = fiyat
        self.image = image
    }
    
}
