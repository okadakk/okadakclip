//
//  HomeView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI
import QGrid
import URLImage

struct HomeView: View {
    // let photosData: [HomePhoto] = mockHomePhotosData
    @ObservedObject private var api = HomePhotoApi()

    var body: some View {
        VStack {
            if !self.api.list.isEmpty {
                QGrid(self.api.list, columns: 3, vSpacing: 0, hSpacing: 0, vPadding: 0, hPadding: 0) { photo in
                    NavigationLink(destination: PhotoDetailView(photoId: photo.id)) {
                        URLImage(
                            URL(string: photo.imageUrl)!,
                            expireAfter: Date(timeIntervalSinceNow: 3600.0)
                        )  { proxy in
                           proxy.image
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .clipped()
                       }
                    }.buttonStyle(PlainButtonStyle())
                }
            } else {
                Text("loading...")
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
