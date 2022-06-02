//
//  ContentView.swift
//  ShaanxiTaste
//
//  Created by 吴睿富 on 2022/5/27.
//

import SwiftUI

struct RecipeView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        
        NavigationView {
            ScrollView{
                ForEach(model.recipeList){recipe in
                    
                    NavigationLink(destination: RecipeDetialView(recipe: recipe), label: {
                        HStack{
                            Image(recipe.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 75, height: 75, alignment: .center)
                                .clipped()
                                .cornerRadius(15)
                            Text(recipe.name)
                                .font(.largeTitle)
                                .bold()
                                .padding(.leading)
                                .foregroundColor(.black)
                            Spacer()
                            Text("¥" + String(format: "%.2f", recipe.price))
                                .font(.title)
                                .padding(.leading)
                                .foregroundColor(.black)
                        }.navigationBarTitle(Text("菜单"))
                        
                    })
                }
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
