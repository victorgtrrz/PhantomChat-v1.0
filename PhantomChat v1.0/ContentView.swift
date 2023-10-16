//
//  ContentView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BottomBar()
        /*ZStack {
            Color.blue.ignoresSafeArea()
            Text("PUTADAS")
                .foregroundColor(.white)
                .font(.system(size: 30))
        }*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
