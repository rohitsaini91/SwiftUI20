//
//  TabbarView.swift
//  SwiftUI20
//
//  Created by Rohit Saini on 25/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView{
            Text("Home")
                .tabItem{
                    Image(systemName: "house.fill")
            }
            Text("Find")
                .tabItem{
                    Image(systemName: "magnifyingglass")
            }
            Text("upload")
                .tabItem{
                    Image(systemName: "plus")
            }
            Text("Likes")
                .tabItem{
                    Image(systemName: "heart.fill")
            }
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.fill")
            }
        }
    }
}
