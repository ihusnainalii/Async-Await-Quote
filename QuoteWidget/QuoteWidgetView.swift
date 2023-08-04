//
//  QuoteWidgetView.swift
//  QuoteWidgetExtension
//
//  Created by Husnain Ali on 06/03/2023.
//

import SwiftUI
import WidgetKit

struct QuoteWidgetView: View {
    var entry: Provider.Entry
    
    var body: some View {
        QuoteView(quote: entry.quotes.randomElement()!)
    }
}

struct QuoteWidgetView_Previews: PreviewProvider {
    static let entry = QuoteEntry(date: Date(), quotes: Quote.dummyData)
    
    static var previews: some View {
        QuoteWidgetView(entry: entry)
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
