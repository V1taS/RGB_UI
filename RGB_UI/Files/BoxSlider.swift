//
//  BoxSlider.swift
//  RGB_UI
//
//  Created by Виталий Сосин on 24.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct BoxSlider: View {
    
    @Binding var value: Double
    @Binding var valueTextField: String
    
    let colorTrack: Color
    
    var body: some View {
        HStack {
            TextValues(textValues: value)
            SliderValues(value: $value, colorTrack: colorTrack)
            TextFieldValues(placeHolderTextField: value, valueTextField: $valueTextField) {
                self.value = Double(self.valueTextField) ?? 0
            }
        }
    }
}
