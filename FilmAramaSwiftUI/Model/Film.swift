//
//  Film.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 4.12.2023.
//
import Foundation


import Foundation

struct Film : Codable {
    
    let title, year, imdbID,type,poster: String
    
   private enum CodingKeys: String, CodingKey {
            case title = "Title"
            case year = "Year"
            case imdbID = "imdbID"
            case type = "Type"
            case poster = "Poster"
        }
}

struct GelenFilmler : Codable {
    let filmler : [Film]
    
   private enum CodingKeys: String, CodingKey {
            case filmler = "Search"
   }
}
