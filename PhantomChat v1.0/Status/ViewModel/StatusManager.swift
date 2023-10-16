//
//  StatusManager.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import Foundation

struct Status: Identifiable {
    let id = UUID()
    let userName: String
    let timeAgo: String
    let statusImage: String
    var isViewed: Bool = false
}

class StatusManager: ObservableObject {
    @Published var statusList: [Status] = [
        Status(userName: "Gonzalo", timeAgo: "1h ago", statusImage: "default", isViewed: true),
        Status(userName: "Charlie", timeAgo: "2h ago", statusImage: "default", isViewed: false),
        Status(userName: "Mama", timeAgo: "3h ago", statusImage: "default", isViewed: true),
        Status(userName: "Carlangas", timeAgo: "5h ago", statusImage: "default", isViewed: false),
    ]
}
