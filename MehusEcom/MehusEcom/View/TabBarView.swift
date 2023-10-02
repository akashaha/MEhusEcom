//
//  TabBarView.swift
//  MehusEcom
//
//  Created by Arman Akash on 10/1/23.
//

import SwiftUI

struct TabBarView: View {
    // PROPERTIES
    
    // BODY
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                } //: Home
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Search")
                } //: Search
            
            Text("Orders")
                .tabItem {
                    Image(systemName: "bag.fill.badge.plus")
                    Text("Orders")
                } //: Orders
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                } //: Profile
            
        } //: TAB VIEW
    }
}

#Preview {
    TabBarView()
}
