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
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
