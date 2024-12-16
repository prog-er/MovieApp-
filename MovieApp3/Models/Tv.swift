//
//  Tv.swift
//  MovieApp3
//
//  Created by Olzhas Karibayev on 05.12.2024.
//

import Foundation

struct TrendingTvResponse: Codable{
    let results: [Tv]
}

struct Tv: Codable  {
    let id: Int?
    let mediaType: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int?
    let release_date: String?
    let voteAverage: Double?
}
