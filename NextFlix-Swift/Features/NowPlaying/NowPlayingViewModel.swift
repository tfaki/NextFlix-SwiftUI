//
//  NowPlayingViewModel.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 12.03.2022.
//

import Foundation
import Combine

class NowPlayingViewModel: ObservableObject {
    
    @Published var nowPlayingResponse = [Movie]()
    @Published var nowPlayingLoadingError: String = ""
    @Published var showAlert: Bool = false
    
    private var cancellableSet: Set<AnyCancellable> = []
    var dataManager: ServiceProtocol
    
    init( dataManager: ServiceProtocol = Service.shared) {
        self.dataManager = dataManager
        getNowPlaying(page: 1)
    }
    
    func getNowPlaying(page: Int) {
        dataManager.fetchNowPlaying(page: page)
            .sink { (dataResponse) in
                if dataResponse.error != nil {
                    self.createAlert(with: dataResponse.error!)
                } else {
                    self.nowPlayingResponse = dataResponse.value!.results
                }
            }.store(in: &cancellableSet)
    }
    
    func createAlert( with error: NetworkError ) {
        nowPlayingLoadingError = error.backendError == nil ? error.initialError.localizedDescription : error.backendError!.message
        self.showAlert = true
    }
}
