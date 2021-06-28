//
//  SearchView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 01/06/2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            ZStack {
                (Color(red: 0.114, green: 0.157, blue: 0.259))
            }.navigationBarTitle("Arama", displayMode: .automatic)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
