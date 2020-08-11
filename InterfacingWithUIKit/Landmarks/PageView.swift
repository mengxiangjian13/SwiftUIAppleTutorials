//
//  PageView.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/8/6.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    @State var currentPage = 0
    
    var viewControllers: [UIHostingController<Page>] // UIHostingController 是SwiftUI可以在UIKit体系里面的包装。一个SwiftUI组件，经过UIHostingController的包装，就可以加载UIKit的视图层级里面
    
    init(_ views: [Page]) {
        self.viewControllers = views.map {
            UIHostingController(rootView: $0)
        }
    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(viewControllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: self.viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map {
            FeatureCard(landmark: $0)
        })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
