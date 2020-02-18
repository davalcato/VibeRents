//
//  ContentView.swift
//  VibeRents
//
//  Created by Daval Cato on 2/16/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let posts = ["1", "2", "3","1", "2", "3"]
    
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
            ForEach(posts, id: \.self) { post in
                PostView()
              }
                
            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username")
            Text("Post body text that will hopefully suport auto sizing vertically and span mutliple line")
            Image("post_puppy")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
