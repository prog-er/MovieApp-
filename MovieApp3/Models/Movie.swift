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
    let id: Int
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_averege: Double  
}
