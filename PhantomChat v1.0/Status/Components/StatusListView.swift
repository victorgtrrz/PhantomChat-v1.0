//
//  StatusListView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct StatusListView: View {
    @ObservedObject var statusManager = StatusManager()
    var body: some View {
        Section(header: Text("Recent updates")) {
            List(statusManager.statusList) { status in
                StatusCardView(status: status)
            }
        }
    }
}

#Preview {
    StatusListView()
}
