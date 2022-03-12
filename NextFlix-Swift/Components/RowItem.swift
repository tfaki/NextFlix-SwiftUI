//
//  RowItem.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct RowItem: View {
    var movie: Movie
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: URL(string: movie.posterUrl)) { image in
                    image
                        .resizable()
                        .frame(width: 80, height: 100)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(8)
                        
                } placeholder: {
                    Image(systemName: "photo")
                        .imageScale(.large)
                        .foregroundColor(.gray)
                }
                Spacer().frame(width: 25)
                VStack {
                    Text(movie.title)
                        .font(.system(size: 16, weight: .heavy, design: .default))
                    Text(movie.overview)
                        .lineLimit(2)
                }
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius:8))
    }
}

struct RowItem_Previews: PreviewProvider {
    static let nowPlaying = Movie(
        id: 1,
        title: "Pereira",
        overview: "createwithswift.com",
        poster_path: "@tiagogogo"
    )
    static var previews: some View {
        RowItem(movie: nowPlaying)
    }
}
