//
//  Photo.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/21.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import Foundation
import Alamofire

struct HomePhotoApiData: Decodable {
    var result: [HomePhotoApiResult]
    var status: Int
}

struct HomePhotoApiResult: Decodable {
    var image: String
    var url: String
}

class HomePhotoApi: ObservableObject {
    @Published var list: [HomePhoto] = []

    init() {
        AF.request(HomePhotoApiUrlMock).responseDecodable(of: HomePhotoApiData.self) { response in
            guard let value = response.value else { return }
            
            self.list = value.result.map { result in
                HomePhoto(id: 1, imageUrl: result.image)
            }
        }
    }
}
