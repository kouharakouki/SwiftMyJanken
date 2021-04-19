//
//  ContentView.swift
//  SwiftMyJanken
//
//  Created by 鴻原航輝 on 2021/04/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action: {
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }) {
                Text("ジャンケンをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
