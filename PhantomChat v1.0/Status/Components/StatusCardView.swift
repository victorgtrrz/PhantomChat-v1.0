//
//  StatusCardView.swift
//  PhantomChat v1.0
//
//  Created by Victor Gutierrez Gutierrez on 11/10/2023.
//

import SwiftUI

struct StatusCardView: View {
    let status: Status
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 62, height: 62)
                    .foregroundColor(status.isViewed ? .blue : .gray.opacity(0.3))
                    .fontWeight(.medium)
                
                Image(status.statusImage)
                    .resizable()
                    .frame(width: 55, height: 55)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(status.userName).font(.headline)
                Text(status.timeAgo)
                    .font(.subheadline)
                    .foregroundColor(.gray).bold()
            }
        }
    }
}

struct StatusCardView_Previews: PreviewProvider {
    static var previews: some View {
        StatusCardView(status: StatusManager().statusList[0])
    }
}
