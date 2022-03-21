//
//  ContentView.swift
//  Shared
//
//  Created by Christopher Tai on 3/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.44999998807907104)), location: 1)]),
                        startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                        endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
            ZStack {
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 0)))

                Rectangle()
                .strokeBorder(Color(#colorLiteral(red: 0.8166666626930237, green: 0.06499301642179489, blue: 0.017013847827911377, alpha: 1)), lineWidth: 8)
            }
            .frame(width: 375, height: 667)
            VStack{
                ZStack{
                    Ellipse()
                        .fill(Color(#colorLiteral(red: 0.8166666626930237, green: 0.06499301642179489, blue: 0.017013847827911377, alpha: 1)))
                    .frame(width: 225, height: 225)
                    Image("Logo")
                        .resizable()
                        .frame(width:225, height:225)
                }
                .position(x: 300, y: 140)
                Text("Login").font(.custom("Odor Mean Chey Regular", size: 30)).multilineTextAlignment(.center)
                Text("email").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.06, blue: 0.02, alpha: 1))).multilineTextAlignment(.center)
                ZStack {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 264, height: 39)
                Text("password").font(.custom("Odor Mean Chey Regular", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.06, blue: 0.02, alpha: 1))).multilineTextAlignment(.center)
                ZStack {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 264, height: 39)
                
                Text("forgot password")
                    .font(.custom("Odor Mean Chey Regular", size: 16))
                    .multilineTextAlignment(.center)
                Text("Enter").font(.custom("Odor Mean Chey Regular", size: 36)).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.06, blue: 0.02, alpha: 1))).multilineTextAlignment(.center)
                //forgot password
            }
        }

        
        /*Image(nsImage: #imageLiteral(resourceName: "Rutgers Nutrition-logos_transparent 1"))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 290, height: 287)
            .clipped()
        .frame(width: 290, height: 287)
        .frame(width: 375, height: 667)*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
