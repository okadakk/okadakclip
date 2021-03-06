//
//  OnBoardingView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI

struct OnBoardingView : View {
    @EnvironmentObject var session: SessionStore

    var body: some View {
        Button(action: session.finishOnBoarding) {
            Text("Finish OnBoarding")
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView().environmentObject(SessionStore())
    }
}
