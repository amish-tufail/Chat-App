//
//  TabBarButton.swift
//  Chat App
//
//  Created by Amish Tufail on 21/01/2023.
//

import SwiftUI

struct TabBarButton: View {
    var buttonText: String
    var imageName: String
    var isActive: Bool
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            if isActive {
                Rectangle()
                    .frame(width: size.width/2.0, height: 4.0)
                    .padding(.leading, size.width/4.0)
                    .tint(Color("icons-primary"))
            }
            VStack(alignment: .center, spacing: 4.0) {
                Image(imageName)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 24.0, height: 24.0)
                Text(buttonText)
                    .font(Font.tabBar)
            }
            .frame(width: size.width, height: size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(buttonText: "Chats", imageName: "Chat", isActive: true)
    }
}
