//
//  ImageView.swift
//  Demo
//
//  Created by TTN on 15/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        Image("smiley")
        .resizable()
        .frame(width: 100.0, height: 100.0)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiftUIView()
    }
}
