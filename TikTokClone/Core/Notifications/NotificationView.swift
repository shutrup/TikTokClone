//
//  NotificationView.swift
//  TikTokClone
//
//  Created by Шарап Бамматов on 13.11.2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24, content: {
                    ForEach(1...20, id: \.self) { count in
                        NotificationCell()
                    }
                })
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationView()
}
