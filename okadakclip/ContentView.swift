//
//  ContentView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session: SessionStore
    
    func getUser () {
        session.listen()
    }

    var body: some View {
        Group {
            if (session.session == nil) {
                SignInView()
            } else if (session.checkOnBoading() == false) {
                OnBoardingView()
            } else {
                MainView()
            }
        }.onAppear(perform: getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SessionStore())
    }
}
