//
//  FirstTabView.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct NowPlayingView: View {
    @ObservedObject var viewModel = NowPlayingViewModel()
    
    var body: some View {
        List(viewModel.nowPlayingResponse) { movie in
            RowItem(movie: movie)
        }
        .frame( maxWidth: .infinity)
        .listStyle(PlainListStyle())
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
