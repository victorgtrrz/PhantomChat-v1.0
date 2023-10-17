//
//  SearchBar.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 17/10/2023.
//

import SwiftUI

struct SearchBar: View {
    @State private var search: String = ""

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            TextField(
                    "User name (email address)",
                    text: $search
                )
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            Button(action: {
                search = ""
            }, label: {
                Image(systemName: "eraser")
            })
        }
    }
}

#Preview {
    SearchBar()
}
