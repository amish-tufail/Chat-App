//
//  TabBar.swift
//  Chat App
//
//  Created by Amish Tufail on 21/01/2023.
//

import SwiftUI

enum Tabs: Int {
    case chats = 0
    case contacts = 1
}

struct TabBar: View {
    @Binding var selectedTab: Tabs
    var body: some View {
        HStack(alignment: .center) {
            Button {
                selectedTab = .chats
            } label: {
                TabBarButton(buttonText: "Chats", imageName: "Chat", isActive: selectedTab == .chats)
            }
            .tint(Color("icons-secondary"))
            
            Button {
                
            } label: {
                GeometryReader { proxy in
                    let size = proxy.size
                    VStack(alignment: .center, spacing: 8.0) {
                        Image("NewChat")
                            .renderingMode(.template)
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 24.0, height: 24.0)
                            .background(
                                Circle()
                                    .frame(width: 32.0, height: 32.0)
                            )
                        Text("New Chat")
                            .font(Font.tabBar)
                    }
                    .frame(width: size.width, height: size.height)
                }
                
            }
            .tint(Color("icons-primary"))
            Button {
                selectedTab = .contacts
            } label: {
                TabBarButton(buttonText: "Contacts", imageName: "Contacts", isActive: selectedTab == .contacts)
            }
            .tint(Color("icons-secondary"))
        }
        .frame(height: 82.0) // From Design
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.chats))
    }
}
