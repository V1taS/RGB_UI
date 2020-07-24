//
//  TextFieldValues.swift
//  RGB_UI
//
//  Created by Виталий Сосин on 23.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct TextFieldValues: View {
    
    var placeHolderTextField: Double
    @Binding var valueTextField: String
    
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        TextField("\(lround(placeHolderTextField))",
            text: $valueTextField,
            onEditingChanged: editingChanged,
            onCommit: commit)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .overlay(RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 2))
            .foregroundColor(.black)
            .shadow(color: Color.gray.opacity(0.4), radius: 3, x: 1, y: 2)
            .frame(width: 70)
            .opacity(0.5)
    }
}
