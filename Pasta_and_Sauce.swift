//
//  Pasta & Sauce.swift
//  Rutgers Dining Hall
//
//  Created by Christopher Tai on 4/26/22.
//


import SwiftUI


struct Pasta_and_Sauce: View{
    
    /*init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }*/
    //ideally, searches through the list of foods and finds those that fit the category of drinks and puts them in a list
    @State var drinks: [String] = ["Pasta - White", "Pasta - Whole Grain", "Sauce - Carbonara", "Sauce - Tomato", "Sauce - Alfredo", "Sauce - Pesto"]
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
        .navigationTitle("Pasta and Sauce")
        /*.navigationBarItems(trailing: NavigationLink(destination: HomeScreen(), label: {HStack{
            Text("Next").foregroundColor(Color.white)
            Image(systemName: "chevron.right").foregroundColor(.white)}}))
        .onAppear{
            UITableView.appearance().backgroundColor = .clear
        }*/
        
        }
    }
}
struct Pasta_and_Sauce_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Pasta_and_Sauce()
                .previewDevice("iPhone 13")
        }
    }
}
