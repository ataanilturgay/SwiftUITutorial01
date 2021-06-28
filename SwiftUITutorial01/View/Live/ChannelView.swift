//
//  ChannelView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 03/06/2021.
//

import SwiftUI

struct ChannelView: View {
    let channel: Channel
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image(systemName: channel.channelLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)
            Spacer()
            VStack(alignment: .leading, spacing: 8) {
                Text(channel.channelName)
                    .foregroundColor(.white)
                    .font(.body)
                Text(channel.programInterval)
                    .foregroundColor(.gray)
                    .font(.footnote)
                Text(channel.programName)
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
            Spacer()
            Image(systemName: "play.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 34, height: 34)
                .foregroundColor(.white)
        }.padding()
    }
}

struct ChannelView_Previews: PreviewProvider {
    static let channels: [Channel] = Bundle.main.decode("LiveTV.json")

    static var previews: some View {
        ChannelView(channel: channels[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
