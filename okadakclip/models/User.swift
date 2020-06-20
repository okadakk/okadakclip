//
//  File.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

struct User: Decodable, Identifiable {
    var id: Int
    var email: String
    var displayName: String
    var isOnBoarding: Bool
}
