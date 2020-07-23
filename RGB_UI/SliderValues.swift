//
//  SliderValues.swift
//  RGB_UI
//
//  Created by Виталий Сосин on 23.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct SliderValues: View {
    
    @Binding var value: Double
    let colorTrack: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .accentColor(colorTrack)
    }
}
