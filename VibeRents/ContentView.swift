//
//  ContentView.swift
//  VibeRents
//
//  Created by Daval Cato on 2/16/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let posts = ["1", "2", "3"]
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(posts, id: \.self) { posts in
                Text(posts.description.capitalized)
                
                }
                
            }.navigationBarTitle(Text("Groups"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
