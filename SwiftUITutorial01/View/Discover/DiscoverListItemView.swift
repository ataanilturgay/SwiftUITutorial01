//
//  DiscoverListItemView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anıl Turgay on 27.06.2021.
//

import SwiftUI

struct DiscoverListItemView: View {
    let movie: Movie
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(movie.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12.0)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(movie.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                Text(movie.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct DiscoverListItemView_Previews: PreviewProvider {
    static let movies: [Movie] = Bundle.main.decode("Movies.json")

    static var previews: some View {
        DiscoverListItemView(movie: movies[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
