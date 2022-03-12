//
//  NowPlayingResponse.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 12.03.2022.
//
import Foundation

struct NowPlayingResponse: Codable {
    let results: [NowPlaying]
}

struct NowPlaying: Codable, Hashable {
    let id: Int
    let title: String
    let overview: String
    let poster_path: String
    var posterUrl: String {
            return "https://image.tmdb.org/t/p/w500" + poster_path 
        }
}
