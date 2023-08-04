//
//  QuoteScreen.swift
//  Quote
//
//  Created by Husnain Ali on 14/02/2023.
//

import SwiftUI

struct QuotesScreen: View {
    @StateObject var vm: QuotesViewModelImpl
    
    init() {
        self._vm = StateObject(
            wrappedValue: QuotesViewModelImpl(service: QuoteServiceImpl())
        )
    }
    
    var body: some View {
        Group {
            if vm.quotes.isEmpty {
                LoadingView(text: "Fetching Quotes")
            } else {
                ScrollView {
                    VStack {
                        ForEach(vm.quotes, id: \.self) { quote in
                            QuoteView(quote: quote)
                        }
                    }
                }
            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
}

struct QuoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
