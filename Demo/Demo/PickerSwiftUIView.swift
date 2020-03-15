//
//  PickerSwiftUIView.swift
//  Demo
//
//  Created by TTN on 15/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct PickerSwiftUIView: View {
    @State private var pickerSelectedIndex = 0
        var arrayText = ["One","Two","Three","Four","Five","Six"]
        
        var body: some View {
            VStack(spacing: 20.0) {
                Picker(selection:$pickerSelectedIndex, label: Text("Picker")) {
                    ForEach(0..<arrayText.count) {
                        Text(self.arrayText[$0])
                            .multilineTextAlignment(.center)
                            .frame(width: 100)
                            .padding(.all, 10.0)
                    }
                    }.frame(width: UIScreen.main.bounds.width/2)
                }
            .padding(.all, 20.0)
        }
    }

struct PickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PickerSwiftUIView()
    }
}
