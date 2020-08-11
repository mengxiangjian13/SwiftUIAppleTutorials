//
//  PageControl.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/8/11.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = numberOfPages
        
        pageControl.addTarget(context.coordinator, action: #selector(Coordinator.clickPageControl(sender:)), for: .valueChanged)
        
        return pageControl
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        var pageControl: PageControl
        
        init(_ pageControl: PageControl) {
            self.pageControl = pageControl
        }
        
        @objc func clickPageControl(sender: UIPageControl) {
            pageControl.currentPage = sender.currentPage
        }
    }
}
