//
//  HomeScreen.swift
//  Rutgers Dining Hall
//
//  Created by Christopher Tai on 3/21/22.
//

import SwiftUI

struct HomeScreen: View{
    var body : some View{
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8156862854957581, green: 0.06666667014360428, blue: 0.01568627543747425, alpha: 1)), Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .bottom)
                .ignoresSafeArea(edges: .top)
                
                Rectangle()
                    .strokeBorder(Color.white, lineWidth: 3)
                // .frame(maxWidth: infinity, maxHeight: infinity)
                    .cornerRadius(60)
                    .ignoresSafeArea(edges: .bottom)
                    .ignoresSafeArea(edges: .top)

                VStack{
                    Rectangle()
                            .strokeBorder(Color.white)
                            .background(Rectangle().fill(Color(#colorLiteral(red: 0.8166666626930237, green: 0.06499301642179489, blue: 0.017013847827911377, alpha: 1))))
                            .overlay(Text("CHOOSE YOUR DINING HALL").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:3, y:4))
                        .offset(y:20)
                        .padding(.bottom, 50.0)
                        .frame(width: 308, height: 142)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)), radius:4, x:4, y:4)
                    ZStack {
                        Rectangle()
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8156862854957581, green: 0.06666667014360428, blue: 0.01568627543747425, alpha: 1)), Color(#colorLiteral(red: 0.886274516582489, green: 0.4274509847164154, blue: 0.3607843220233917, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                        
                        Rectangle()
                            .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                        //Creates a list for the dining halls
                        VStack {
                            
                            //Brower
                            NavigationLink(destination: BrowerView(), label:{Text("Brower").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 30)})
                            
                            //Busch
                            NavigationLink(destination: BuschView(), label:{Text("Busch").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 30)})
                            
                            //Livingston
                            //Busch
                            NavigationLink(destination: LiviView(), label:{Text("Livingston").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 30)})
                            
                            //Nielson
                            NavigationLink(destination: NielsonView(), label:{Text("Nielson").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color.white).multilineTextAlignment(.center).padding(.bottom, 30)})
                            
                        }
                    }
                    .offset(y:40)
                    .compositingGroup()
                    .frame(width: 259, height: 373)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)), radius:4, x:4, y:4)
                    .navigationBarItems(/*leading: NavigationLink(destination: ContentView(), label: {Text("logout").foregroundColor(Color.white)}), */trailing: NavigationLink(destination: Settings(), label: {Image(systemName: "gear").foregroundColor(.white)}))
                }
                .offset(y: -80)
            }
    }
}

func goToLivi(){
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: LiviView())
        window.makeKeyAndVisible()
    }
}

func logout(){
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: ContentView())
        window.makeKeyAndVisible()
    }
}


func goToNielson(){
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: NielsonView())
        window.makeKeyAndVisible()
    }
}

func goToBusch(){
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: BuschView())
        window.makeKeyAndVisible()
    }
}

func goToBrower(){
    if let window = UIApplication.shared.windows.first {
        window.rootViewController = UIHostingController(rootView: BrowerView())
        window.makeKeyAndVisible()
    }
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen()
                .previewDevice("iPhone 13")
        }
    }
}

