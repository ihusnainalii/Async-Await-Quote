//
//  QuoteView.swift
//  Quote
//
//  Created by Husnain Ali on 14/02/2023.
//

import SwiftUI

struct QuoteView: View {
    let quote: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\"\(quote.quote)\"")
                .fontWeight(.bold)
            Text("Character: \(quote.character)")
            HStack {
                Image(systemName: "tv")
                    .font(.system(size: 12, weight: .black))
                Text(quote.anime)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.randomColor.opacity(0.1))
        )
        .padding(.vertical, 3)
        .padding(.horizontal, 12)
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(quote: Quote.dummyData.first!)
    }
}
