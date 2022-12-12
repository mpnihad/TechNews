//
//  Webview.swift
//  TechNews
//
//  Created by Nihad-Mac on 28/11/22.
//


import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    

    var urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString {
                  if let url = URL(string: safeURL){
                      let request  = URLRequest(url: url)
                       uiView.load(request)
                  }
      
              }
    }
}
