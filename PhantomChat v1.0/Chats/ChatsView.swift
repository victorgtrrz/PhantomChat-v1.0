//
//  ChatsView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct ChatsView: View {    
    var body: some View {
        NavigationView {
            Form {
                SearchBar()
                ChatList()
                InfoTextView()
            }
            .navigationTitle("Discussions")
            .navigationBarItems(leading:
                Text("Clear").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
        }
    }
}

#Preview {
    ChatsView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
