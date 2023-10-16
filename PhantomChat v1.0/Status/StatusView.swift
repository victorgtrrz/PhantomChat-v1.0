//
//  StatusView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        NavigationView {
            Form {
                MyStatusCardView()
                StatusListView()
                InfoTextView()
            }
            .navigationTitle("Status")
            .navigationBarItems(leading: 
                Text("Privacy").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
