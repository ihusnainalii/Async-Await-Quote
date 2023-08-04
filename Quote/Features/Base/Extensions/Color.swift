//
//  Color.swift
//  Quote
//
//  Created by Husnain Ali on 06/03/2023.
//

import SwiftUI

extension Color {
    static var randomColor: Color {
        let random = { CGFloat(arc4random_uniform(255)) / 255.0 }
        let uiColor = UIColor(red: random(), green: random(), blue: random(), alpha: 1)
        return Color(uiColor)
    }
}
