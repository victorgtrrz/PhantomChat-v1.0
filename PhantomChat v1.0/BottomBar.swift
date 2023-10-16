//
//  BottomBar.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        TabView {
            StatusView()
                .tabItem{
                    Text("Status")
                    Image(systemName: "circle.dashed.inset.filled")
                }
            ChatsView()
                .tabItem{
                    Text("Chats")
                    Image(systemName: "message.fill")
                }
            SettingsView()
                .tabItem{
                    Text("Settings")
                    Image(systemName: "gear")
                }

        }
        
    }
}


struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

