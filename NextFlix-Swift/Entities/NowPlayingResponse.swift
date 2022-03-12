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
        return BASE_IMAGE_URL + poster_path
        }
}
