//
//  NetworkManager.swift
//  TechNews
//
//  Created by Nihad-Mac on 28/11/22.
//

import Foundation

class NetworkManager : ObservableObject {
    
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let e = error{
                    print(e)
                }
                else
                {
                    let decodder = JSONDecoder()
                    if let dataSafe = data {
                        do {
                            let results = try decodder.decode(Results.self, from: dataSafe)
                            print(results)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        }
                        
                        catch{
                            print (error)
                        }
                        
                    }
                    
                }
                
            }
            task.resume()
        }
        
        
    }
}
