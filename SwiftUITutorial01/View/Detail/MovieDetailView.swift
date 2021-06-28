//
//  MovieDetailView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anıl Turgay on 27.06.2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                Text(movie.name.uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.blue
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                Text(movie.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Gallery")
                    DetailGalleryView(movie: movie)
                }.padding(.horizontal)
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static let movies: [Movie] = Bundle.main.decode("Movies.json")

    static var previews: some View {
        MovieDetailView(movie: movies[0])
            .preferredColorScheme(.dark)
    }
}
