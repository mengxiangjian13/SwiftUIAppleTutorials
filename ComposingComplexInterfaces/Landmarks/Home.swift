//
//  Home.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/7/29.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarkData) {
            $0.category.rawValue
        }
    }
    
    var featured: [Landmark] {
        landmarkData.filter { (landmark) -> Bool in
            landmark.isFeatured
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted(),
                        id: \.self) {
                            CategoryRow(categoryName: $0, items: self.categories[$0]!)
                }
                .listRowInsets(EdgeInsets()) //
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
