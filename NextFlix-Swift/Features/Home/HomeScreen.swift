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
            NowPlayingView()
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Now Playing")
                }
            PopularView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis.circle.fill")
                    Text("Popular")
                }
            UpcomingView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Upcoming")
                }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
