/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    
//    @State var showFavoritesOnly = false // 加入state属性。state属性改变会重新渲染
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                // switch组件。$前缀来binding一个state或者一个属性
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorite Only")
                }
                // 如果一个列表，有不同类型的cell，可以用ForEach来包装同一个类型的cell
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(UserData())
        }
    }
}
