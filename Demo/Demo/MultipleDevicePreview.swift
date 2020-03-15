//
//  MultipleDevicePreview.swift
//  Demo
//
//  Created by TTN on 15/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct MultipleDevicePreview: View {
    var body: some View {
        Text("Multiple Device Preview")
    }
}

struct MultipleDevicePreview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        MultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 8"))
        .previewDisplayName("iPhone 8")
        
        MultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 8 Plus"))
        .previewDisplayName("iPhone 8 Plus")
        
        MultipleDevicePreview()
        .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro"))
        .previewDisplayName("iPhone 11 Pro")
            
        MultipleDevicePreview()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro Max"))
               .previewDisplayName("iPhone 11 Pro Max")
            
        MultipleDevicePreview()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 11"))
               .previewDisplayName("iPhone 11")
            
        }
    }
}
