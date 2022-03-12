//
//  ErrorModel.swift
//  NextFlix-Swift
//
//  Created by Talha Faki on 12.03.2022.
//

import Foundation
import Alamofire

struct NetworkError: Error {
  let initialError: AFError
  let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}
