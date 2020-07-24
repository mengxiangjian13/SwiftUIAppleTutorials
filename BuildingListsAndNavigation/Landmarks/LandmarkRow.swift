//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/7/23.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable() // 图片可以更改size
                .frame(width: 50, height: 50) // 规定frame
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group { // 组合预览组件
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            LandmarkRow(landmark: landmarkData[2])
        }
            .previewLayout(.fixed(width: 300, height: 70)) // 自定义预览，给一个给定的空间layout自动适配
    }
}
