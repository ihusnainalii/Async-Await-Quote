//
//  QuoteWidget.swift
//  QuoteWidget
//
//  Created by Husnain Ali on 06/03/2023.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    typealias Entry = QuoteEntry
    
    func placeholder(in context: Context) -> QuoteEntry {
        QuoteEntry(date: Date(), quotes: Quote.dummyData)
    }

    func getSnapshot(in context: Context, completion: @escaping (QuoteEntry) -> ()) {
        completion(QuoteEntry(date: Date(), quotes: Quote.dummyData))
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        Task {
            do {
                let quotes = try await QuoteServiceImpl().fetchRandomQuotes()
                let entry = QuoteEntry(date: Date(), quotes: quotes)
                let refreshDate = Calendar.current.date(byAdding: .minute, value: 60, to: Date())
                let timeline = Timeline(entries: [entry], policy: .after(refreshDate!))
                completion(timeline)
            } catch {
                print("QuoteProviderError: \(error)")
            }
        }
    }
}

struct QuoteWidget: Widget {
    let kind: String = "QuoteWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            QuoteWidgetView(entry: entry)
        }
        .configurationDisplayName("Quote Widget")
        .description("Fetch and shows quote from animechan.vercel.app.")
        .supportedFamilies([.systemLarge])
    }
}
