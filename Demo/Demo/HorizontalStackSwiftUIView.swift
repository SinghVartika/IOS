//
//  HorizontalStackSwiftUIView.swift
//  Demo
//
//  Created by TTN on 15/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct HorizontalStackSwiftUIView: View {
    var body: some View {
            HStack{
                            Text("Image")
                            Text("Text")
                            Text("Button")
                            Text("Picker")
            }
            .background(Color.red)
        }
}

struct HorizontalStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalStackSwiftUIView()
    }
}
