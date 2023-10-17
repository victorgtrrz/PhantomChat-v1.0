//
//  StatusCardView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct ChatBanner: View {
    let chats: ChatsInfo
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 62, height: 62)
                    .foregroundColor(chats.isViewed ? .blue : .gray.opacity(0.3))
                    .fontWeight(.medium)
                
                Image(chats.statusImage)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(chats.userName).font(.headline)
                    HStack {
                        Text(chats.lastMessage)
                            .font(.subheadline)
                            .foregroundColor(.gray).bold()
                            .lineLimit(1)
                            .truncationMode(.tail)
                    }
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 5) {
                    Text(chats.timeLastMessage)
                        .foregroundColor(chats.isViewed ? .gray : .blue)
                    Image(systemName: "circle.fill")
                        .foregroundColor(chats.isViewed ? .clear : .blue)
                }
            }
        }
    }
}

struct ChatBanner_Previews: PreviewProvider {
    static var previews: some View {
        ChatBanner(chats: ChatsManager().chatList[0])
    }
}
