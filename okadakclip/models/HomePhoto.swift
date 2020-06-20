//
//  File.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import Foundation

struct HomePhoto: Decodable, Identifiable {
    var id: Int
    var imageUrl: String
}
