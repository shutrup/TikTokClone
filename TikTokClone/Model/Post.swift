//
//  Post.swift
//  TikTokClone
//
//  Created by Шарап Бамматов on 15.11.2023.
//

import Foundation

struct Post: Identifiable, Codable, Hashable {
    let id: String
    let videoURL: String
}
