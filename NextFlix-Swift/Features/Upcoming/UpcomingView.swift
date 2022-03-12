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
        ScrollView {
            LazyVStack {
                ForEach(viewModel.upcomingResponse, id: \.self) { movie in
                    RowItem(movie: movie)
                }
            }
        }
    }
}

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingView()
    }
}
