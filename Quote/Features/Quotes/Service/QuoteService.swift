//
//  QuoteService.swift
//  Quote
//
//  Created by Husnain Ali on 14/02/2023.
//

import Foundation

protocol QuoteService {
    func fetchRandomQuotes() async throws -> [Quote]
}

final class QuoteServiceImpl: QuoteService {
    func fetchRandomQuotes() async throws -> [Quote] {
        let urlSessin = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data, _) = try await urlSessin.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
