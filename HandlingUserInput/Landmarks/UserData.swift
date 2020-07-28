//
//  UserData.swift
//  Landmarks
//
//  Created by mengxiangjian on 2020/7/28.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine // ObservableObject 需要import Combine包

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
