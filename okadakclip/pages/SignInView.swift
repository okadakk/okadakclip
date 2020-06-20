//
//  SignInView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI

struct SignInView : View {
    @State var email: String = ""
    @State var password: String = ""
    @State var loading = false
    @State var error = false

    @EnvironmentObject var session: SessionStore

    func signIn () {
        loading = true
        error = false
        session.signIn()
        self.loading = false
    }

    var body: some View {
        VStack {
            TextField("email address", text: $email)
            SecureField("Password", text: $password)
            if (error) {
                Text("ahhh crap")
            }
            Button(action: signIn) {
                Text("Sign in")
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView().environmentObject(SessionStore())
    }
}
