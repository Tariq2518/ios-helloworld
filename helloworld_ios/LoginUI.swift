//
//  LoginUI.swift
//  helloworld_ios
//
//  Created by Tariq Hussain on 10/08/2024.
//

import SwiftUI

struct LoginUI: View {
    @State var username = ""
    @State var password = ""
    @State var isOn = false
    var body: some View {
        
        NavigationView{
        VStack{
            Text("Login").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                Button(action: {
                }, label: {
                    Text("Login").font(.body)
                })
                .padding(.all)
                .frame(width: 200, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
            
            if(isOn){
                NavigationLink(destination: ContentView()) {
                    Text("Guest Mode").font(.body)
                }
            }
            Toggle("Switch", isOn: $isOn)
            
            NavigationLink(destination: Onboarding_Screens()) {
                Text("OnBoarding").font(.body)
            }
            
            
                
            
           
            
        }.padding(.all)
        }
    }
}

#Preview {
    LoginUI()
}
