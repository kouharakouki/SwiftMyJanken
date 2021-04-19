//
//  ContentView.swift
//  SwiftMyJanken
//
//  Created by 鴻原航輝 on 2021/04/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("gu")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("グー")
            Button(action: {
                print("タップされたよ！")
            }) {
                Text("ジャンケンをする！")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
