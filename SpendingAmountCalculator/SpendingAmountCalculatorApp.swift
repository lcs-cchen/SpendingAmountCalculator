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
                Group{
                    CashflowIncomeView(history: $history)
                        .tabItem {
                            Image(systemName: "dollarsign.arrow.circlepath")
                            Text("Cashflow/Income")
                            
                        }
                    
                    
                    
                    BudgetView(history: $history)
                        .tabItem {
                            Image(systemName: "dollarsign.square")
                            Text("Budjet")
                        }
                    
                }
                
            }
        }
    }
}
