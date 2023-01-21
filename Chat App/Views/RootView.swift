//
//  RootView.swift
//  Chat App
//
//  Created by Amish Tufail on 21/01/2023.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab: Tabs = .chats
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
            Spacer()
            TabBar(selectedTab: $selectedTab)
        }
    }

}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
