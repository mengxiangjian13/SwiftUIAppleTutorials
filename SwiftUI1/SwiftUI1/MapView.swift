//
//  MapView.swift
//  SwiftUI1
//
//  Created by mengxiangjian on 2020/7/23.
//  Copyright © 2020 mengxiangjian. All rights reserved.
//

import SwiftUI
import MapKit

/**
 SwiftUI 中可以使用UIKit的某些组件，但UIKit的组件，需要使用SwiftUI的组件来包装。SwiftUI的组件，实现UIViewRepresentable协议中的两个方法就好。
 1. makeUIView，用来创建UIKit组件。
 2. updateUIView，当UI需要刷新的时候调用。
 */

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
