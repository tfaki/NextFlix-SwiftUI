//
//  UpcomingView.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 12.03.2022.
//

import SwiftUI

struct UpcomingView: View {
    
    @ObservedObject var viewModel = UpcomingViewModel()
    
    var body: some View {
        List(viewModel.upcomingResponse) { movie in
            RowItem(movie: movie)
        }
        .frame( maxWidth: .infinity)
        .listStyle(PlainListStyle())
    }
}

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingView()
    }
}
