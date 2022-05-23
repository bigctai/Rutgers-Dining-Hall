//
//  Settings.swift
//  Rutgers Dining Hall
//
//  Created by Christopher Tai on 4/18/22.
//

import SwiftUI

struct Settings: View{
    var body: some View{
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
                NavigationLink(destination: HomeScreen(), label: {Text("Profile")})
                    .padding()
                NavigationLink(destination: HomeScreen(), label: {Text("Help")})
                    .padding()
                NavigationLink(destination: HomeScreen(), label: {Text("About")})
                    .padding()
            }
            
            
        }.navigationTitle("Settings").foregroundColor(Color.white)
    }
}


struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Settings()
                .previewDevice("iPhone 13")
        }
    }
}
