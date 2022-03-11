//
//  HomeScreen.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        TabView {
           FirstTabView()
             .tabItem {
                Image(systemName: "phone.fill")
                Text("First Tab")
           }
           SecondTabView()
             .tabItem {
                Image(systemName: "tv.fill")
                Text("Second Tab")
          }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
