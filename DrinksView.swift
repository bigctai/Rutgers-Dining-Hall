//
//  DrinksView.swift
//  Rutgers Dining Hall
//
//  Created by Christopher Tai on 4/5/22.
//

import SwiftUI


struct DrinksView: View{
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    //ideally, searches through the list of foods and finds those that fit the category of drinks and puts them in a list
    @State var drinks: [String] = ["Fanta", "Sprite", "Ginger Ale", "Coke", "Lemonade", "Blue Powerade", "Minute Maid Cranberry Juice", "Minute Maid Apple Juice", "Minute Maid Orange Juice"]
    @State private var showingPopover = false
    var body: some View{

        ZStack{
        LinearGradient(
            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8156862854957581, green: 0.06666667014360428, blue: 0.01568627543747425, alpha: 1)), Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1))]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea(edges: .bottom)
        .ignoresSafeArea(edges: .top)

        List{
            ScrollView{
            ForEach(drinks, id:\.self){ drink in
                
                Button(action:{showingPopover = true}){
                    ZStack {
                        Rectangle()
                            .strokeBorder(Color.white)
                            .background(Rectangle().fill(Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1))))
                    Text(drink).font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                }
                .popover(isPresented: $showingPopover) {
                        Text("Your content here")
                            .font(.headline)
                            .padding()
                        }
                }
                .frame(width: 318, height: 90)
        }
            }
            .listRowBackground(Color.red.opacity(0))
            }
        .frame(height: 550)
        .offset(y: -20)
        .navigationTitle("DRINKS")
        .onAppear{
            UITableView.appearance().backgroundColor = .clear
        }
        
        }
    }
}
struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DrinksView()
                .previewDevice("iPhone 13")
        }
    }
}
