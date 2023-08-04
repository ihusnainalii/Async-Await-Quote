//
//  QuoteEntry.swift
//  QuoteWidgetExtension
//
//  Created by Husnain Ali on 06/03/2023.
//

import WidgetKit

struct QuoteEntry: TimelineEntry {
    var date: Date
    let quotes: [Quote]
}
