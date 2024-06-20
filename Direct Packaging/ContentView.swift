//
//  ContentView.swift
//  Direct Packaging
//
//  Created by Majedul on 6/20/24.
//
import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://directpackaging.online")!)
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image(systemName: "shippingbox.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Text("Direct Packaging")
                                .font(.headline)
                        }
                    }
                }
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
