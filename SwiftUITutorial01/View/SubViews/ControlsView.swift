//
//  ControlsView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 10/06/2021.
//

import SwiftUI
import AVKit

struct ControlsView: View {
    @Binding var player: AVPlayer
    @Binding var isPlaying: Bool
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Button(action: {

                }) {
                    Image(systemName: "backward.fill")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(20)
                }
                Spacer()
                Button(action: {
                    if self.isPlaying {
                        self.player.pause()
                        self.isPlaying = false
                    } else {
                        self.player.play()
                        self.isPlaying = true
                    }
                }) {
                    Image(systemName: self.isPlaying ? "pause.fill" : "play.fill")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(20)
                }
                Spacer()
                Button(action: {
                }) {
                    Image(systemName: "forward.fill")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(20)
                }
            }
            Spacer()
        }.padding()
        .background(Color.black.opacity(0.3))
    }
}
