//
//  ChatList.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 17/10/2023.
//

import SwiftUI

struct ChatList: View {
    @ObservedObject var chatsManager = ChatsManager()
    var body: some View {
        Section(header: Text("Conversations")) {
            List(chatsManager.chatList) { chat in
                ChatBanner(chats: chat)
            }
        }
    }
}

#Preview {
    ChatList()
}
