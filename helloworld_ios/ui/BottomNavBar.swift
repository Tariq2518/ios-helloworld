//
//  BottomNavBar.swift
//  helloworld_ios
//
//  Created by Tariq Hussain on 11/08/2024.
//

import SwiftUI

struct BottomNavBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "home")
                }
            
            ActivitiyView()
                .tabItem {
                    Label("Home", systemImage: "globe")
                }
            
            SettingsView()
                .tabItem {
                    Label("Home", systemImage: "setting")
                }
        }
    }
}

#Preview {
    BottomNavBar()
}
