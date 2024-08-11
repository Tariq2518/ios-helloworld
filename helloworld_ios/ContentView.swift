//
//  ContentView.swift
//  helloworld_ios
//
//  Created by Tariq Hussain on 10/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State var tap = 0
    @State var isOpen = false
    var body: some View {
        
        NavigationView {
            VStack {
                
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Divider()
                Text("Tariq's first Ios app")
                Text("Hello, world!")

                Button(action: {
                    self.tap += 1
                }, label: {
                    Text("Click Button").font(.body)
                })
                .padding(.all)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
                
                Text("Clicked this button \(tap) times")
                
                NavigationLink(destination: BottomNavBar()) {
                    Text("Bottom Bar").font(.body)
                }
                
                Button(action: {
                    isOpen.toggle()
                }, label: {
                    Text("Open Bottomsheet").font(.body)
                })
                .padding(.all)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
                .sheet(isPresented: $isOpen, content: {
                    VStack{
                        Image(systemName: "person")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Divider()
                        Text("Bottom Sheet")
                        Text("Hello, world!")
                    }.presentationDetents([.large, .medium])
                
                })
                
                            
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
