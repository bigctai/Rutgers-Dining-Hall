//
//  LiviView.swift
//  Rutgers Dining Hall (iOS)
//
//  Created by Christopher Tai on 3/21/22.
//

import SwiftUI

struct food{
    let name: String
    let destination: AnyView
}
struct LiviView: View{
    var body : some View{
        /*var foods = [
         food(name: "Drinks", destination: DrinksView())
         ]*/
            //Rectangle 15
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8156862854957581, green: 0.06666667014360428, blue: 0.01568627543747425, alpha: 1)), Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .bottom)
                .ignoresSafeArea(edges: .top)
                
                
                Rectangle()
                    .strokeBorder(Color.white)
                // .frame(maxWidth: infinity, maxHeight: infinity)
                    .cornerRadius(60)
                    .ignoresSafeArea(edges: .bottom)
                    .ignoresSafeArea(edges: .top)
                
                
                VStack{
                    Rectangle()
                        .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                    
                        .overlay(Text("LIVINGSTON DINING HALL").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:3, y:4)
                        )
                        .padding(.bottom, 50.0)
                        .compositingGroup()
                        .frame(width: 308, height: 142)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)), radius:4, x:4, y:4)
                    ScrollView {
                        
                        //Drinks
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 0)), location: 0.9998999834060669),
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                            
                            Rectangle()
                                .strokeBorder(Color.white)
                            NavigationLink(
                                destination: DrinksView(),
                                label:{
                                    Text("Drinks").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                                }
                            )
                        }
                        .frame(width: 318, height: 100)
                        
                        
                        //Desserts
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 0)), location: 0.9998999834060669),
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                            
                            Rectangle()
                                .strokeBorder(Color.white)
                            NavigationLink(
                                destination: DessertsView(),
                                label:{
                                    Text("Desserts").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                                }
                            )
                        }
                        .frame(width: 318, height: 100)
                        
                        //Mongolian
                        
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 0)), location: 0.9998999834060669),
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                            
                            Rectangle()
                                .strokeBorder(Color.white)
                            NavigationLink(
                                destination: MongolianView(),
                                label:{
                                    Text("Mongolian").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                                }
                            )
                        }
                        .frame(width: 318, height: 100)
                        
                        //Burger
                        
                        ZStack {
                            Rectangle()
                                .fill(LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 0)), location: 0.9998999834060669),
                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                            
                            Rectangle()
                                .strokeBorder(Color.white)
                            NavigationLink(
                                destination: BurgerView(),
                                label:{
                                    Text("Burger").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                                }
                            )
                        }
                        .frame(width: 318, height: 100)
                        
                        //Pasta
                        
                        Group {
                            //Rectangle 18
                            ZStack {
                                Rectangle()
                                    .fill(LinearGradient(
                                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 0)), location: 0.9998999834060669),
                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                                
                                Rectangle()
                                    .strokeBorder(Color.white)
                                NavigationLink(
                                    destination: PastaView(),
                                    label:{
                                        Text("Pasta").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                                    }
                                )
                            }
                            .frame(width: 318, height: 100)
                            
                        }
                    }
                    .frame(height: 400)
                }
                .offset(y:-40)
            .navigationBarItems(/*leading: NavigationLink(destination: HomeScreen(), label: {HStack{
                Image(systemName: "chevron.left").foregroundColor(.white)
                Text("Home").foregroundColor(Color.white)
            }}), */trailing: NavigationLink(destination: NutritionPage(), label: {HStack{
                Text("Nutrition").foregroundColor(Color.white)
                Image(systemName: "chevron.right").foregroundColor(.white)}}))
        }
    }
    
    struct SelfServeView: View{
        var body: some View{
            Rectangle()
        }
    }
    
    
    struct DessertsView: View{
        var body: some View{
            Rectangle()
        }
    }
    
    struct MongolianView: View{
        var body: some View{
            Rectangle()
        }
    }
    
    struct BurgerView: View{
        var body: some View{
            Rectangle()
        }
    }
    
    func goToDrinks(){
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: DrinksView())
            window.makeKeyAndVisible()
        }
    }
    
    
    struct LiviView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                LiviView()
                    .previewDevice("iPhone 13")
            }
        }
    }
}
