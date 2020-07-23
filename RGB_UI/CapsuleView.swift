//
//  CapsuleView.swift
//  RGB_UI
//
//  Created by Виталий Сосин on 23.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct CapsuleView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
        .frame(width: 350, height: 120)
        .clipShape(Capsule())
        .shadow(radius: 10)
        .overlay(Capsule().stroke(Color.black, lineWidth: 2))
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView(red: 100, green: 100, blue: 100)
    }
}
