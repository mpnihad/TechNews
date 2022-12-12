//
//  ContentView.swift
//  TechNews
//
//  Created by Nihad-Mac on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager :NetworkManager = NetworkManager()
    
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts, rowContent: { post in
                
                NavigationLink(destination: DetailsView(url:post.url)) {
                    
                    HStack {
                        Text(String(post.points))
                        Text(post.title )
                        
                    }
                    
                }
                
            })
            .navigationTitle("Tech News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
    }
}



