//
//  SecondTabView.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct PopularView: View {
    @ObservedObject var viewModel = PopularViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.popularResponse, id: \.self) { movie in
                    RowItem(movie: movie)
                }
            }
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
