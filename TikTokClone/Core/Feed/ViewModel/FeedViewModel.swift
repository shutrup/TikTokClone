//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Шарап Бамматов on 15.11.2023.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videoURLs: [String] = [
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoURL: videoURLs[0]),
            .init(id: NSUUID().uuidString, videoURL: videoURLs[1]),
            .init(id: NSUUID().uuidString, videoURL: videoURLs[2]),
            .init(id: NSUUID().uuidString, videoURL: videoURLs[3])
        ]
    }
}
