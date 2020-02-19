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
        .init(id: 0, username: "Tanaya Henry", text: "Good old times in the bay area", imagename: "burger")
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("Trending")
                            HStack {
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                                Text("Group 1")
                              
                        }
                    }
                    
                }.frame(height: 100)
            // This is the post rows
                ForEach(posts, id: \.id) { post in
                PostView()
              }
                
            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("burger")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 70)
                    .clipped()
                VStack (alignment: .leading, spacing: 4) {
                    Text("Joe Chavez").font(.headline)
                    Text("Miami, Brickelli Bay").font(.subheadline)
                }.padding(.leading, 8)
    
            }.padding(.leading, 16).padding(.top, 16)
            
            Text("Post body text that will hopefully suport auto sizing vertically and span mutliple line").lineLimit(nil)
            Image("post_puppy")
                .resizable()
                .frame(width: 400, height: 385)

        }.padding(.leading, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
