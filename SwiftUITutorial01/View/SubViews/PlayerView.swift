//
//  PlayerView.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 11/06/2021.
//

import SwiftUI
import AVKit

struct PlayerView: View {
    @State var player = AVPlayer(url: URL(string: "https://media.blutv.com/blutv/60819b05866ac313b0c67ea6.m3u8?bandwidth=-1&height=-1&width=-1&subtitles=m3u8&hevc=false")!)
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                AVPlayerControllerRepresented(player: player)
                ControlsView(player: $player, isPlaying: $isPlaying)
            }.background(Color.black.edgesIgnoringSafeArea(.all))
            .onAppear {
                self.player.play()
                self.isPlaying = true
            }.frame(height: 400)
            Spacer()
        }
    }
}

struct AVPlayerControllerRepresented : UIViewControllerRepresentable {
    var player : AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
