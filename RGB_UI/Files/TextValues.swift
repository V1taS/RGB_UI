//
//  TextValues.swift
//  RGB_UI
//
//  Created by Виталий Сосин on 23.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct TextValues: View {
    
    var textValues: Double
    
    var body: some View {
        Text("\(lround(textValues))")
            .foregroundColor(.black)
            .frame(width: 70)
            .font(.headline)
    }
}

struct TextValues_Previews: PreviewProvider {
    static var previews: some View {
        TextValues(textValues: 105)
    }
}
