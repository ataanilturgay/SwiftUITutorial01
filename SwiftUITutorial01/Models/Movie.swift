//
//  Movie.swift
//  SwiftUITutorial01
//
//  Created by Ata Anıl Turgay on 27.06.2021.
//

import Foundation

struct Movie: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let link: String
    let cast: String
    let director: String
    let releaseDate: String
    let image: String
    let gallery: [String]
}
