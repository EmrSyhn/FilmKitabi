//
//  FilmDetay.swift
//  FilmAramaSwiftUI
//
//  Created by Emir Seyhan on 18.12.2023.
//

import Foundation

struct FilmDetay: Codable {
    let title, year, genre, director: String
    let writer, actors, plot, awards: String
    let poster: String
    let metascore, imdbRating, imdbID: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case awards = "Awards"
        case poster = "Poster"
        case metascore = "Metascore"
        case imdbRating, imdbID
    }
}
