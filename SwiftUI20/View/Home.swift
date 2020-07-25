//
//  Home.swift
//  SwiftUI20
//
//  Created by Rohit Saini on 25/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import SwiftUI

struct Home: View {
    @ObservedObject var homeVM = HomeViewModel()
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(homeVM.stories){ story in
                            StoryView(storyPic: story.storyPic,name:story.name)
                        }
                    }
                }
            }
            ForEach(0..<20){ i in
                HomeFeed(feedImage: "test")
            }
        }
    }
}

struct StoryView:View {
    var storyPic: String
    var name:String
    var body: some View{
        VStack{
            Image(storyPic).resizable().frame(width: 80, height: 80).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 3).fill(Color.red)).padding(5)
            Text(name)
        }
    }
}



struct HomeFeed:View{
    var feedImage: String
    var body: some View{
        VStack{
            HStack{
                Image(feedImage).resizable().frame(width: 40, height: 40).clipShape(Circle())
                
                Text("User")
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "ellipsis").frame(width: 25, height: 25).foregroundColor(.white)
                }
            }.padding(8)
            Image(feedImage).resizable().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2).padding([.top,.bottom], 10)
            HStack{
                Button(action: {
                    
                }) {
                    Image(systemName: "heart").resizable().frame(width: 25, height: 25)
                }
                Button(action: {
                    
                }) {
                    Image(systemName: "message").resizable().frame(width: 25, height: 25)
                }
                
                Button(action: {
                    
                }) {
                    Image(systemName: "paperplane").resizable().frame(width: 25, height: 25)
                }
                
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "bookmark").resizable().frame(width: 25, height: 25)
                }
               
            }.padding(8)
            HStack{
                VStack(alignment:.leading){
                Text("24,599 likes")
                Text("view all comments").foregroundColor(.gray)
                Text("18 min ago").foregroundColor(.gray)
            }.padding(8)
            Spacer()
            }
        }
    }
}

