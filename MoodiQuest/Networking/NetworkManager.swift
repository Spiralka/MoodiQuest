//
//  NetworkManager.swift
//  MoodiQuest
//
//  Created by Евгений Фомин on 26.12.2024.
//

import Foundation
import Alamofire

final class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    func request<T: Decodable>(
        endpoint: String,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        headers: HTTPHeaders? = nil,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        let url = APIConstants.baseURL + endpoint
        
        AF.request(url, method: method, parameters: parameters, encoding: URLEncoding.default, headers: headers)
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}

extension NetworkManager {
    func fetchDailyQuests(completion: @escaping (Result<[Quest], Error>) -> Void) {
        request(endpoint: APIConstants.Endpoints.dailyQuests) { (result: Result<[Quest], Error>) in
            completion(result)
        }
    }
}
