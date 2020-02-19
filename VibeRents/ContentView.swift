//
//  ContentView.swift
//  VibeRents
//
//  Created by Daval Cato on 2/16/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct Post {
    let id: Int
    let username, text, imagename: String
}

struct ContentView: View {
    
    let posts: [Post] = [
        .init(id: 0, username: "Tanaya Henry", text: "Good old times in the bay area", imagename: "burger"),
        .init(id: 1, username: "Tanaya Henry", text: "Good old times in the bay area", imagename: "post_puppy")
        
        
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("Trending")
                            HStack {
                                VStack (alignment: .leading) {
                                    Image("hike")
                                    .resizable()
                                    .frame(width: 60, height: 70)
                                    Text("Group 1")
                            }
                        }
                    }
                    
                }.frame(height: 180)
            // This is the post rows
                ForEach(posts, id: \.id) { post in
                PostView(post: post)
              }
                
            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct PostView: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("burger")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 70)
                    .clipped()
                VStack (alignment: .leading, spacing: 4) {
                    Text(post.username).font(.headline)
                    Text("Miami, Brickelli Bay").font(.subheadline)
                }.padding(.leading, 8)
    
            }.padding(.leading, 1).padding(.top, 16)
            
            Text("Post body text that will hopefully suport auto sizing vertically and span mutliple line").lineLimit(nil)
            Image(post.imagename)
                .resizable()
                .frame(width: 400, height: 535)

        }.padding(.leading, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
