//
//  ServiceProtocol.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 12.03.2022.
//

import Foundation
import Combine
import Alamofire

protocol ServiceProtocol {
    func fetchNowPlaying() -> AnyPublisher<DataResponse<NowPlayingResponse, NetworkError>, Never>
}

class Service {
    static let shared: ServiceProtocol = Service()
    private init() { }
}

extension Service: ServiceProtocol {
    
    func fetchNowPlaying() -> AnyPublisher<DataResponse<NowPlayingResponse, NetworkError>, Never> {
        let url = URL(string: NOW_PLAYING_URL)!
        let parameters: Parameters = [
                API_KEY_NAME: API_KEY
                ]
        
        return AF.request(url,
                          method: .get,
                          parameters: parameters)
            .validate()
            .publishDecodable(type: NowPlayingResponse.self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    return NetworkError(initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
