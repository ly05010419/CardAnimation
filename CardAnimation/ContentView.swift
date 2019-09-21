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
        Button(action: {
            withAnimation {
                self.show.toggle()
            }
        }) {
            VStack() {
                Text("Card")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.title)
            }
            .frame(width: show ? UIScreen.main.bounds.size.width : 100, height: show ? UIScreen.main.bounds.size.height+10 : 100)
            .background(Color.blue)
        }
        .cornerRadius(show ? 0 : 50)
        .animation(.spring())
        .shadow(radius: 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
