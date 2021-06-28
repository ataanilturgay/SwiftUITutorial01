//
//  HeadingView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anıl Turgay on 27.06.2021.
//

import SwiftUI

struct HeadingView: View {
    let headingImage: String
    let headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(Color.blue)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Gallery")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
