//
//  SessionStore.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/21.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI

class SessionStore: ObservableObject {
    @Published var session: User? = nil
    let userDataNoOnBoard: User = mockUserDataNoOnBoard
    let userData: User = mockUserData

    // loginしてるかチェックする。
    func listen() {}

    func signIn() {
        self.session = userDataNoOnBoard
    }

    func signOut () {
        self.session = nil
    }
    
    func checkOnBoading() -> Bool {
        guard let user = self.session else {
            return false
        }
        
        return user.isOnBoarding
    }
    
    func finishOnBoarding() {
        self.session = userData
    }
}
