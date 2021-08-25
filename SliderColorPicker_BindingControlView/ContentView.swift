//
//  ContentView.swift
//  SliderColorPicker_BindingControlView
//
//  Created by Drashti on 19/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var Red:Double = 0
    @State var Green:Double = 0
    @State var Blue:Double = 0
    
    var body: some View {
        VStack{
            
            Rectangle()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color(red: Red/255, green: Green/255, blue: Blue/255))
                .border(Color.black, width: 2)
            
            SliderView(value: $Red, lable: "Red")
            SliderView(value: $Green, lable: "Green")
            SliderView(value: $Blue, lable: "Blue")
            /*
            Slider(value: $Red, in: 0...255, step:1).padding()
            Text("Red : \(Int(Red))")
            Slider(value: $Green, in: 0...255, step:1).padding()
            Text("Green : \(Int(Green))")
            Slider(value: $Blue, in: 0...255, step:1).padding()
            Text("Blue : \(Int(Blue))")
            */
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
