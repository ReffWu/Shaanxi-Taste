//
//  RecipeModel.swift
//  ShaanxiTaste
//
//  Created by 吴睿富 on 2022/5/27.
//

import Foundation

class RecipeModel:ObservableObject{
    @Published var recipeList:[Recipe]
    
    
    init(){
        self.recipeList = DataService.getLocalData()
    }
    
    
    
}
