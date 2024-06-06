//
//  MoviesDataHelper.swift
//  QuickAndNimblePractice
//
//  Created by 劉子瑜-20001220 on 2024/6/6.
//

import Foundation

enum Genre: Int {
    case Animation
    case Action
    case none
}

struct Movie {
    var title: String
    var genre: Genre
}

class MoviesDataHelper {
    static func getMovies() -> [Movie] {
        return [
            Movie(title: "The Emoji Movie", genre: .Animation),
            Movie(title: "Logan", genre: .Action),
            Movie(title: "Wonder Woman", genre: .Action),
            Movie(title: "Zootopia", genre: .Animation),
            Movie(title: "The Baby Boss", genre: .Animation),
            Movie(title: "Despicable Me 3", genre: .Animation),
            Movie(title: "Spiderman: Homecoming", genre: .Action),
            Movie(title: "Dunkirk", genre: .Animation)
        ]
    }
}
