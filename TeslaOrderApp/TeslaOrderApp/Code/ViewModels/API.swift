//
//  API.swift
//  TeslaOrderApp
//
//  Created by MIKHAIL ZHACHKO on 23.11.25.
//

import Foundation
import Combine

struct API {

    enum Error: LocalizedError, Identifiable {
        var id: String { localizedDescription }
        case addressUnreachable(URL)
        case invalidResponse
        var errorDescription: String? {
            switch self {
            case .addressUnreachable(let url): return "\(url.absoluteString)"
            case .invalidResponse: return "The server responded with garbage."
            }
        }
    }
    enum EndPoimt {
        static let base = URL(string: "https://reqres.in/")!
        case post
        var url: URL {
            switch self {
            case .post: return EndPoimt.base.appendingPathComponent("api/tesla-order")
            }
        }
        static func request(with url: URL, and order: OrderViewModel) -> URLRequest{
            guard let encoded = try? JSONEncoder().encode(order) else {
                fatalError("Invalid")
            }
            var request = URLRequest(url: url)
            request.setValue("applicatiom/json", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            request.httpBody = encoded
            return request
        }
    }
    private let decoder = JSONDecoder()
    func post(with order: OrderViewModel) -> AnyPublisher<OrderViewModel, Error> {
        URLSession.shared.dataTaskPublisher(for: EndPoimt.request(with: EndPoimt.post.url, and: order))
            .map { $0.data}
            .decode(type: OrderViewModel.self, decoder: decoder)
            .mapError { error in
                switch error {
                case is URLError: return Error.addressUnreachable(EndPoimt.post.url)
                default: return Error.invalidResponse
                }
            }
            .print()
            .map{ return $0 }
            .eraseToAnyPublisher()
    }
}
