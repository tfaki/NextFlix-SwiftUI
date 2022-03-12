//
//  UpcomingViewModel.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 12.03.2022.
//

import Foundation
import Combine

class UpcomingViewModel: ObservableObject {
    
    @Published var upcomingResponse = [Movie]()
    @Published var upcomingLoadingError: String = ""
    @Published var showAlert: Bool = false
    
    private var cancellableSet: Set<AnyCancellable> = []
    var dataManager: ServiceProtocol
    
    init( dataManager: ServiceProtocol = Service.shared) {
        self.dataManager = dataManager
        getNowPlaying()
    }
    
    func getNowPlaying() {
        dataManager.fetchUpcoming()
            .sink { (dataResponse) in
                if dataResponse.error != nil {
                    self.createAlert(with: dataResponse.error!)
                } else {
                    self.upcomingResponse = dataResponse.value!.results
                }
            }.store(in: &cancellableSet)
    }
    
    func createAlert( with error: NetworkError ) {
        upcomingLoadingError = error.backendError == nil ? error.initialError.localizedDescription : error.backendError!.message
        self.showAlert = true
    }
}
