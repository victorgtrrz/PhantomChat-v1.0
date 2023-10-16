//
//  MyStatusCardView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct MyStatusCardView: View {
    var body: some View {
        Section {
            HStack {
                ZStack(alignment: .bottomTrailing) {
                    Image("hacking")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Image(systemName: "plus").bold()
                        .padding(2.5)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                VStack(alignment: .leading) {
                    Text("My Status").font(.headline)
                    Text("Add to my status")
                        .font(.subheadline).foregroundColor(.gray)
                }
                Spacer()
                Button {
                    print("Status Card Camera")
                } label: {
                    Image(systemName: "camera.fill")
                        .font(.body)
                        .padding(10)
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                }
                Button {
                    print("")
                } label: {
                    Image(systemName: "pencil")
                        .font(.body)
                        .padding(10)
                        .background(.ultraThinMaterial)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    MyStatusCardView()
}
