//
//  ContentView.swift
//  HowToUseWebKit
//
//  Created by ramil on 05.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                WebKit(request: URLRequest(url: URL(string: "https://www.apple.com/uk/")!))
            }.navigationBarTitle("WebKit")
        }
    }
}

struct WebKit: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: UIViewRepresentableContext<WebKit>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
