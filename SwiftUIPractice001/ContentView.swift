//
//  ContentView.swift
//  SwiftUIPractice001
//
//  Created by Eang Kimlong on 8/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var txt = "Hello, SwiftUI!"
    @State private var imgUrl = "star"
    @State private var bgColor: Color = .red
    var body: some View {
        ZStack {
            Color(bgColor).ignoresSafeArea()
            VStack {
                        Text(txt)
                            .font(.system(size: 44, weight: .bold))
                            .foregroundColor(bgColor == .red ? Color.blue : Color.red)
                            .font(Font.custom("Times New Roman", size: 18))
                        Image(systemName: imgUrl)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .foregroundStyle(.yellow)
                        Button("Change Text") {
                            txt = txt == "Hello, SwiftUI!" ? "Hello iOS" : "Hello, SwiftUI!"
                        }
                        .padding(.horizontal,15)
                        .padding(.vertical,10)
                        .background(bgColor == .red ? Color.green : Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(10)
                        Button("Toggle Background Color") {
                            bgColor = bgColor == .red ? Color.blue : Color.red
                        }
                        .padding(.horizontal,15)
                        .padding(.vertical,10)
                        .background(bgColor == .red ? Color.blue : Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(10)
                        Button("Toggle Icon") {
                            imgUrl = imgUrl == "star" ? "moon" : "star"
                        }
                        .padding(.horizontal,15)
                        .padding(.vertical,10)
                        .background(Color.cyan)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(10)
            }
         }
        
    }
}

#Preview {
    ContentView()
}
