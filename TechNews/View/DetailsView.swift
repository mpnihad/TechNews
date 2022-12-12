//
//  DetailsView.swift
//  TechNews
//
//  Created by Nihad-Mac on 28/11/22.
//

import SwiftUI

struct DetailsView: View {
    
    let url : String?
    init(url: String?) {
        self.url = url
    }
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url:"https://google.com")
    }
}


