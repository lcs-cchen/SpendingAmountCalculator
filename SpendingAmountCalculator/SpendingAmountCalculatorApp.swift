//
//  SpendingAmountCalculatorApp.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

@main
struct SpendingAmountCalculatorApp: App {
    @State var history: [result] = []
    var body: some Scene {
        WindowGroup {
            TabView {
                CashflowIncomeView()
                    .tabItem {
                        Image(systemName: "car")
                        Text("Hi")
                    }

                CashflowIncomeView()
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Bye")
                    }

            }
        }
    }
}
