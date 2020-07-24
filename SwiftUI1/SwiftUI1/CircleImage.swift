//
//  CircleImage.swift
//  SwiftUI1
//
//  Created by mengxiangjian on 2020/7/23.
//  Copyright © 2020 mengxiangjian. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) // 裁剪为某个形状。参数是符合Shape protocol的实例
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // overlay 上面覆盖。.stroke：线条。圆形白色描边
            .shadow(radius: 10) // 阴影
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
