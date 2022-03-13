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
        List(viewModel.popularResponse) { movie in
            RowItem(movie: movie)
        }
        .frame( maxWidth: .infinity)
        .listStyle(PlainListStyle())
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
