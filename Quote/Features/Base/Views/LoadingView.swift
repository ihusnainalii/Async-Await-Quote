//
//  LoadingView.swift
//  Quote
//
//  Created by Husnain Ali on 14/02/2023.
//

import SwiftUI

struct LoadingView: View {
    let text: String
    
    var body: some View {
        VStack {
            ProgressView()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Quotes")
    }
}
