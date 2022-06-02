//
//  Recipe.swift
//  ShaanxiTaste
//
//  Created by 吴睿富 on 2022/5/27.
//

import Foundation

class Recipe:Decodable,Identifiable{
    var id: UUID?
    
    var name: String
    var image: String
    var price: Float
    var rate: Float
    var review: String
    var introduction: String
}
