//
//  RowItem.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 11.03.2022.
//

import SwiftUI

struct RowItem: View {
    var nowPlaying: NowPlaying
    var body: some View {
        VStack {
            HStack {
                Spacer().frame(width: 16)
                Image("https://image.tmdb.org/t/p/w500" + nowPlaying.poster_path)
                    .resizable()
                    .frame(width: 50.0, height: 80.0)
                    .padding(10.0)
                    .background(Color.blue)
                    .clipShape(Circle())
                Spacer().frame(width: 25)
                VStack {
                    Text(nowPlaying.title)
                        .font(.system(size: 16, weight: .heavy, design: .default))
                    Text(nowPlaying.overview)
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
    static let nowPlaying = NowPlaying(
            id: 1,
            title: "Pereira",
            overview: "createwithswift.com",
            poster_path: "@tiagogogo"
        )
    static var previews: some View {
        RowItem(nowPlaying: nowPlaying)
    }
}
