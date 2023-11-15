//
//  PostGridView.swift
//  TikTokClone
//
//  Created by Шарап Бамматов on 14.11.2023.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    
    private var width = (UIScreen.main.bounds.width / 4) - 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0..<25, id: \.self) { post in
                Rectangle()
                    .frame(width: self.width, height: 160)
                    .clipped()
            }
        })
    }
}

#Preview {
    PostGridView()
}
