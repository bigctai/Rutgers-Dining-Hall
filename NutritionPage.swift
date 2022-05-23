//
//  Nutrition Page.swift
//  Rutgers Dining Hall
//
//  Created by Christopher Tai on 4/7/22.
//

import SwiftUI

struct NutritionPage: View{
    var body: some View{
        VStack{
            Text("Nutritional Facts")
                .font(.largeTitle)
                .bold()
            List{
                HStack{
                    Text("Calories: ")
                        .padding(.bottom, 10)
                        .padding(.top, 10)
                    Text("1")
                }
                Text("Fat: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Cholesterol: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Sodium: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Total Carbohydrate: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Protein: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Vitamin D: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Calcium: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Iron: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                Text("Potassium: ")
                    .padding(.bottom, 10)
                    .padding(.top, 10)
            }
        }
    }
}
struct NutritionPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NutritionPage()
        }
    }
}
