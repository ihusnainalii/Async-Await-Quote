//
//  Quote.swift
//  Quote
//
//  Created by Husnain Ali on 14/02/2023.
//

import Foundation

struct Quote: Decodable, Hashable {
    let anime: String
    let character: String
    let quote: String
}

extension Quote {
    static let dummyData = [
        Quote(anime: "Anime 1", character: "Character 1", quote: "Quote 1"),
        Quote(anime: "Anime 2", character: "Character 2", quote: "Quote 2"),
        Quote(anime: "Anime 3", character: "Character 3", quote: "Quote 3"),
        Quote(anime: "Anime 4", character: "Character 4", quote: "Quote 4"),
        Quote(anime: "Anime 5", character: "Character 5", quote: "Quote 5")
    ]
}
