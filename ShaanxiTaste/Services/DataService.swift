//
//  DataService.swift
//  ShaanxiTaste
//
//  Created by 吴睿富 on 2022/5/27.
//

import Foundation

class DataService{
    static func getLocalData() -> [Recipe]{
        let stringPath = Bundle.main.path(forResource: "recipe", ofType: "json")
        guard stringPath != nil else{
           return [Recipe]()
        }
        let url = URL(fileURLWithPath: stringPath!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do{
                let recipeIN = try decoder.decode([Recipe].self, from: data)
                for i in recipeIN{
                    i.id = UUID()
                }
                return recipeIN
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Recipe]()
    }
    
    
    
}
