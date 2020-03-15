
//
//  VerticalStackSwiftUIView.swift
//  Demo
//
//  Created by TTN on 15/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct VerticalStackSwiftUIView: View {
    var body: some View {
            VStack{
                VStack {
                    List{
                            Text("Image")
                            Text("Text")
                            Text("Vertical Stack View")
                            Text("Horizontal Stack View")
                            Text("Button")
                            Text("Picker")
    
                    }
                }
            }
        }
}

struct VerticalStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalStackSwiftUIView()
    }
}
