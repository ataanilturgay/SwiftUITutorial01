//
//  DiscoverView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 01/06/2021.
//

import SwiftUI

struct DiscoverView: View {
    
    let movies: [Movie] = Bundle.main.decode("Movies.json")
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(movies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            DiscoverListItemView(movie: movie)
                         }
                    }
                }
                .navigationBarTitle("Keşfet", displayMode: .automatic)
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {    
    static var previews: some View {
        DiscoverView()
    }
}
