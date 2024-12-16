//
//  Movie.swift
//  MovieApp3
//
//  Created by Olzhas Karibayev on 21.11.2024.
//

import Foundation

struct TrendingMoviesResponse: Codable{
    let results: [Movie]
}

struct Movie: Codable{
    let id: Int?
    let media_type: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let release_date: String?
    let title: String?
    let vote_averege: Double?
    let vote_count: Int?
}
