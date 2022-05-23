//
//  ViewModel.swift
//  Rutgers Dining Hall
//
//  Created by Christopher Tai on 4/18/22.
//

import SwiftUI

struct NutritionModel : Identifiable{
    let id: String = UUID().uuidString
    let calories : Int
    let carbohydrates : Int
    let sodium : Int
}
struct FoodModel{
    var id: String = UUID().uuidString
    var name : String = ""
    var category : String = ""
    var nutritionalInfo : NutritionModel?
}
var tomatoNutrition = NutritionModel(calories: 5, carbohydrates: 5, sodium: 5)
var cucumberNutrition = NutritionModel(calories: 5, carbohydrates: 5, sodium: 5)
var burgerNutrition = NutritionModel(calories: 100, carbohydrates: 20, sodium: 0)
var cucumber = FoodModel(name: "cucumber", category: "Vegetables", nutritionalInfo: cucumberNutrition)
var burger = FoodModel(name: "cucumber", category: "Burger", nutritionalInfo: cucumberNutrition)
var tomato = FoodModel(name: "tomato", category: "Vegetables", nutritionalInfo: cucumberNutrition)

class FoodViewModel: ObservableObject{
    @Published var foods: [FoodModel] = [
        cucumber
    ]
    @Published var foodsInCat: [FoodModel] = []
    func getFoods(cat: String){
        for number in 0..<foods.count{
            if(foods[number].category==cat){
                foodsInCat.append(foods[number])
            }
        }
    }
}

struct ModelView : View{


    @EnvironmentObject var plate : FoodViewModel
    
    var body: some View{
        NavigationView{
                /*ForEach(foods){food in
                    Text(food.name)
                }*/
            }
        }
}
