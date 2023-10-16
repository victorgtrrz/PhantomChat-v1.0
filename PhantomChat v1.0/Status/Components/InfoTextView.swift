//
//  InfoTextView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct InfoTextView: View {
    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: "lock.fill")
            Text("Your status updates are")
            Text("end-to-end encrypted")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(.gray)
        .font(.caption)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    InfoTextView()
}
