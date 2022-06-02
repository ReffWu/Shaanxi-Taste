//
//  RecipeDetialView.swift
//  ShaanxiTaste
//
//  Created by 吴睿富 on 2022/5/28.
//

import SwiftUI

struct RecipeDetialView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    Image(recipe.image)
                        .resizable()
                        .scaledToFit()
                    VStack(alignment: .trailing) {
                        Spacer()
                        HStack(){
                            Spacer()
                            Text("¥"+String(recipe.price))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding()
                                .font(.title)
                        }
                    }
                    
                }
                VStack(alignment:.leading){
                    Text("【网友评价】")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.vertical)
                    HStack {
                        Text(recipe.review)
                            .font(.body)
                        .padding(.leading)
                        Spacer()
                        Text(String(recipe.rate)+" 分")
                            .padding(.trailing)
                    }
                        
                    Divider()
                    Text("【菜品简介】")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.vertical)
                    Text(recipe.introduction)
                        .padding(.leading)
                }.padding()
                
            }
        }.navigationBarTitle(Text(recipe.name))
        
    }
}

struct RecipeDetialView_Previews: PreviewProvider {
    static var previews: some View {
        
        RecipeDetialView(recipe: RecipeModel().recipeList[0])
    }
}
