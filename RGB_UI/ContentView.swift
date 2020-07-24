//
//  ContentView.swift
//  RGB_UI
//
//  Created by Виталий Сосин on 23.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var valueTextFieldRed = ""
    @State private var valueTextFieldGreen = ""
    @State private var valueTextFieldBlue = ""
    
    @State private var valueRed: Double = 73
    @State private var valueGreen: Double = 146
    @State private var valueBlue: Double = 219
    
    var body: some View {
        ZStack {
            Color(red: valueRed / 255, green: valueGreen / 255, blue: valueBlue / 255, opacity: 0.3).edgesIgnoringSafeArea(.all)
            VStack {
                CapsuleView(red: valueRed, green: valueGreen, blue: valueBlue)
                VStack {
                    BoxSlider(value: $valueRed, valueTextField: $valueTextFieldRed, colorTrack: .red)
                    
                    BoxSlider(value: $valueGreen, valueTextField: $valueTextFieldGreen, colorTrack: .green)
                    
                    BoxSlider(value: $valueBlue, valueTextField: $valueTextFieldBlue, colorTrack: .blue)
                    Spacer()
                }
                .padding(.top, 32)
            }
            .padding(.top, 130)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
