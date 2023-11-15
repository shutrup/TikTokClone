//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by Шарап Бамматов on 14.11.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16, content: {
            VStack(spacing: 8, content: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                                     
                                     
                Text("@lewis.gamilion")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            })
            
            HStack(spacing: 16) {
                UserStatView(num: 5, title: "Following")
                
                UserStatView(num: 8, title: "Followers")

                UserStatView(num: 10, title: "Likes")
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black )
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Divider() 
        })
    }
}

#Preview {
    ProfileHeaderView()
}
