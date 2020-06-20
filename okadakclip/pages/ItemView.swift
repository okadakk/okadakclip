//
//  ItemView.swift
//  okadakclip
//
//  Created by okada.keisuke on 2020/06/20.
//  Copyright © 2020 okada.keisuke. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        Text("Item List")
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
