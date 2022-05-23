//
//  ContentView.swift
//  Shared
//
//  Created by Christopher Tai on 3/19/22.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
        ZStack{
            Rectangle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                .ignoresSafeArea(edges: .bottom)
                .ignoresSafeArea(edges: .top)
            ZStack {
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 0)))

                Rectangle()
                .strokeBorder(Color(#colorLiteral(red: 0.8166666626930237, green: 0.06499301642179489, blue: 0.017013847827911377, alpha: 1)), lineWidth: 5)
            }
            .cornerRadius(60)
            .ignoresSafeArea(edges: .bottom)
            .ignoresSafeArea(edges: .top)
            VStack{
                ZStack{
                    Ellipse()
                        .fill(Color(#colorLiteral(red: 0.8166666626930237, green: 0.06499301642179489, blue: 0.017013847827911377, alpha: 1)))
                    .frame(width: 225, height: 225)
                    Image("Logo")
                        .resizable()
                        .frame(width:250, height:250)
                }
                .padding(.bottom, 10.0)
                Text("LOGIN")
                    .bold()
                    .kerning(2.5)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 12.0)
                    
                Text("email").font(.headline).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.06, blue: 0.02, alpha: 1))).multilineTextAlignment(.center)
                ZStack {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                    TextField("", text: $email)
                }
                .frame(width: 264, height: 39)
                Text("password").font(.headline).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.06, blue: 0.02, alpha: 1))).multilineTextAlignment(.center).padding(.top, 10.0)
                ZStack {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                    TextField("", text: $password)
                }
                .frame(width: 264, height: 39)
                
                Text("forgot password")
                    .font(.caption)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: HomeScreen(), label:{
                    Text("Enter")
                        .kerning(2.0)
                        .font(.largeTitle).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.06, blue: 0.02, alpha: 1))).multilineTextAlignment(.center).padding(.top, 5.0)
                }
                )
                //forgot password
            }
        }
            .navigationBarHidden(true)
        }
    }
        
    func goHome(){
        if let window = UIApplication.shared.windows.first {
                window.rootViewController = UIHostingController(rootView: HomeScreen())
                window.makeKeyAndVisible()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
