//
//  SplashScreenView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 16/10/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    
    var body: some View {
        if (isActive) {
            BottomBar()
        } else {
            VStack {
                VStack {
                    Image("app_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                    Text("Phantom Chat v1.0")
                        .font(.system(size: 12))
                }
                .scaleEffect(size)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2)) {
                        self.size = 1
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
