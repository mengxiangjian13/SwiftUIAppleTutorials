//
//  Badge.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/7/28.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    var badgeSymbols: some View {
        ForEach(0..<Self.rotationCount) { i in
            RotatedBadgeSymbol(angle: .degrees(Double(i) / Double(Self.rotationCount) * 360))
        }
        .opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            // 把用Path画的View包装起来，可以使Path画的view得到当前视图的大小，动态去画，便于复用
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: geometry.size.height * (3.0 / 4.0))
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
