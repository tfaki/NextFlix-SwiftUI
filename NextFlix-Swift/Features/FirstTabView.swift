//
//  FirstTabView.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct FirstTabView: View {
    let items = (0..<200)
    @ObservedObject var viewModel = NowPlayingViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.nowPlayingResponse, id: \.self) { movie in
                    RowItem(nowPlaying: movie)
                }
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
