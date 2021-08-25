//
//  Slider.swift
//  SliderColorPicker_BindingControlView
//
//  Created by Drashti on 19/08/21.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value:Double
    var lable:String
    
    var body: some View {
        VStack{
            Slider(value: $value, in: 0...255, step: 1)
            Text("\(lable): \(Int(value))")
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), lable: "Lable")
    }
}
