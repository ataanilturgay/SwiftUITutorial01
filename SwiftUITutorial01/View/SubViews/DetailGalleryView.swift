//
//  DetailGalleryView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anıl Turgay on 27.06.2021.
//

import SwiftUI

struct DetailGalleryView: View {
    
    let movie: Movie
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(movie.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct DetailGalleryView_Previews: PreviewProvider {
    static let movies: [Movie] = Bundle.main.decode("Movies.json")
    
    static var previews: some View {
        DetailGalleryView(movie: movies[1])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
