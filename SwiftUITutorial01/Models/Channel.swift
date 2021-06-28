//
//  Channel.swift
//  SwiftUITutorial01
//
//  Created by Ata Anil Turgay on 03/06/2021.
//

import Foundation

struct Channel: Codable, Identifiable {
    let id: Int
    let channelName: String
    let channelLogo: String
    let channelNo: Int
    let programName: String
    let programInterval: String
}
