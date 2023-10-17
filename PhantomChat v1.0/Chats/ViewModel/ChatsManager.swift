//
//  StatusManager.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import Foundation

struct ChatsInfo: Identifiable {
    let id = UUID()
    let userName: String
    let lastMessage: String
    let timeLastMessage: String
    let statusImage: String
    var isViewed: Bool = false
}

class ChatsManager: ObservableObject {
    @Published var chatList: [ChatsInfo] = [
        ChatsInfo(userName: "Gonzalo", lastMessage: "En instarciam y taca taca", timeLastMessage: "6:06", statusImage: "default", isViewed: false),
        ChatsInfo(userName: "Carlangas", lastMessage: "Te quiero", timeLastMessage: "5:59", statusImage: "default", isViewed: false),
        ChatsInfo(userName: "Charlie", lastMessage: "Has preguntado por el renato?", timeLastMessage: "0:03", statusImage: "default", isViewed: true),
        ChatsInfo(userName: "Mama", lastMessage: "Ok mama", timeLastMessage: "Yesterday", statusImage: "default", isViewed: false),
    ]
}
