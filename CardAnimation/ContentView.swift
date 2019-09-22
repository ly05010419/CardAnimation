//
//  ContentView.swift
//  CardAnimation
//
//  Created by LiYong on 21.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack(){
            
           Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text(show ? "" : "+")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.title)
                .frame(width: show ? UIScreen.main.bounds.size.height*2 : 80, height: show ? UIScreen.main.bounds.size.height*2 : 80)
                .background(Color.blue)
            }
            .cornerRadius(show ? UIScreen.main.bounds.size.height : 40)
           .animation(.spring())
            .shadow(radius: 30)
           .padding(.init(top: show ? 0 : (UIScreen.main.bounds.size.height - 150), leading: show ? 0 : 280, bottom: 0, trailing:0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
