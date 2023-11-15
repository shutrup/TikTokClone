//
//  UserStatView.swift
//  TikTokClone
//
//  Created by Шарап Бамматов on 14.11.2023.
//

import SwiftUI

struct UserStatView: View {
    let num: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(num)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(num: 4, title: "Following")
}
