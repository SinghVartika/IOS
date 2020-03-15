//
//  ButtonSwiftUIView.swift
//  Demo
//
//  Created by TTN on 15/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Press Button")
        })
    }
}

struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView()
    }
}
