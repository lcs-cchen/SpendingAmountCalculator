//
//  SpendingAmountCalculatorApp.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

@main
struct SpendingAmountCalculatorApp: App {
    @State var billPercentageAmount = " "
    var body: some Scene {
        WindowGroup {
            TabView {
                CashflowIncomeView(billPercentage: $billPercentageAmount)
                    .tabItem {
                        Image(systemName: "car")
                        Text("Hi")
                    }

                CashflowIncomeView(billPercentage: $billPercentageAmount)
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Bye")
                    }

            }
        }
    }
}
