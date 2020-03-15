//
//  ContentView.swift
//  Demo
//
//  Created by TTN on 12/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        VStack{
//            VStack {
//                List{
//                        Text("Image")
//                        Text("Text")
//                        Text("Vertical Stack View")
//                        Text("Horizontal Stack View")
//                        Text("Button")
//                        Text("Picker")
//
//                }
//            }
//        }
//    }
    
       var body: some View {
          NavigationView {
            List{
                NavigationLink(destination: ImageSwiftUIView()) {
                    Text("Image")
                }
                NavigationLink(destination: TextSwiftUIView()) {
                    Text("Text")
                }
                NavigationLink(destination: VerticalStackSwiftUIView()) {
                    Text("Vertical Stack View")
                }
                NavigationLink(destination: HorizontalStackSwiftUIView()) {
                    Text("Horizontal Stack View")
                }
                NavigationLink(destination: ButtonSwiftUIView()) {
                    Text("Button")
                }
                NavigationLink(destination: PickerSwiftUIView()) {
                    Text("Picker")
                }
                NavigationLink(destination: MultipleDevicePreview()) {
                    Text("Multiple Device Preview")
                }
             }.navigationBarTitle(Text("SwiftUI"))
          }
       }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
