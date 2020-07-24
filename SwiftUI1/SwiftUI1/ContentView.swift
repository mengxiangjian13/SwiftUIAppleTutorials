//
//  ContentView.swift
//  SwiftUI1
//
//  Created by mengxiangjian on 2020/7/7.
//  Copyright © 2020 mengxiangjian. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top) // 忽略安全区域，直接顶头
                .frame(height: 300) // 可以规定frame
            CircleImage()
                .offset(y: -130) // 偏移量
                .padding(.bottom, -130) // padding
            VStack(alignment: .leading) { // 垂直方向 layout
                Text("Turtle Rock")
                    .font(.title)
                HStack { // 水平方向layout
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer() // 填满空余空间。
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
