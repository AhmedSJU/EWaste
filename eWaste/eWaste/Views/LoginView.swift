//
//  LoginView.swift
//  eWaste
//
//  Created by Sheikh Ahmed on 12/09/2022.
//

import SwiftUI

struct LoginView: View {
    @State var animate: Bool = false
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
                .task {
                    withAnimation(.easeInOut(duration: 4).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            VStack(spacing: 10) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("eRecycle")
                    .font(.largeTitle)
                    .foregroundColor(.green)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            VStack(spacing: 40.0) {
                VStack(spacing: 16) {
                    TextField("email@domain.com", text: $userName)
                        .textFieldStyle(.roundedBorder)
                        .background(.ultraThinMaterial)
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .background(.ultraThinMaterial)
                    HStack {
                        Spacer()
                        Text("Forgot password?")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
                VStack(spacing: 20) {
                    RoundedRectangleButton(title: "Login")
                    
                    RoundedRectangleButton(selectedBorderColors: [Color("majenta"), Color("majenta").opacity(0), Color("majenta").opacity(0)],
                                           title: "SignUp",
                                           backgroundColors: [Color("majenta"), Color("majenta").opacity(0.7)]
                                           )
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
