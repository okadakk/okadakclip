//
//  PhotoDetailView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI
import URLImage

struct PhotoDetailView: View {
    let photoId: Int
    let photosData: [HomePhoto] = mockHomePhotosData

    var body: some View {
        let photo: HomePhoto = photosData[photoId - 1]
        let size: CGFloat = UIScreen.main.bounds.width
        return VStack(alignment: .leading) {
            URLImage(URL(string: photo.imageUrl)!)  { proxy in
                proxy.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }.frame(width: size, height: size)
            NavigationLink(destination: ProfilesView()) {
                Text("To MyPage")
            }
            Spacer()
        }.navigationBarTitle("Photo", displayMode: .inline)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photoId: 1)
    }
}
