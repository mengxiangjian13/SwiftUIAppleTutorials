//
//  LandmarkList.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/7/24.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                } // 把row套起来，可以相应点击跳转
            } // 传递 数组。数组中的元素类型必须conform Identifiable 协议，就是有一个id字段
            .navigationBarTitle(Text("Landmark")) // 感觉上类似navigationItem，在各个页面中设置，不直接在navigationView上设置
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .previewDevice("iPad 11") // 使用指定的设备预览
        .previewDisplayName("iPhone")
    }
}
