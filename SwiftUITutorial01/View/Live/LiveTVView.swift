//
//  LiveTVView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 01/06/2021.
//

import SwiftUI

struct LiveTVView: View {
    
    let channels: [Channel] = Bundle.main.decode("LiveTV.json")
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                (Color(red: 0.114, green: 0.157, blue: 0.259))
                ScrollView {
                    TextField("Search ...", text: $searchText)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 64)
                        .textFieldStyle(PlainTextFieldStyle())
                        .overlay(RoundedRectangle(cornerRadius: 4.0).stroke(Color.gray))
                    
                    ForEach(channels.filter{ searchText != "" ? $0.channelName.contains(searchText) : true }, id: \.id) { channel in
                        ChannelView(channel: channel)
                            .background(Color(red: 0.255, green: 0.255, blue: 0.255, opacity: 0.10))
                            .cornerRadius(4.0)
                            .padding(.leading, 16)
                            .padding(.trailing, 16)
                            .padding(.bottom, 8)
                    }
                }
            }
            .padding(.top, 16)
            .background(Color(red: 0.114, green: 0.157, blue: 0.259))
            .navigationBarTitle("Canlı Yayın", displayMode: .automatic)
        }
    }
}

struct LiveTVView_Previews: PreviewProvider {
    static var previews: some View {
        LiveTVView()
    }
}
