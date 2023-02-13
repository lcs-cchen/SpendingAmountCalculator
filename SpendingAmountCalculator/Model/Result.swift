//
//  Result.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 9/2/2023.
//

import Foundation

struct result: Identifiable {
    
    let id = UUID()
    let Income: String
    let Bills: String
    let Investments: String
    let FoodExpenses: String
    let TransportationExpense: String
    
}

var exampleResultForPreviews = result(Income: "$2000", Bills: "20%", Investments: "10%", FoodExpenses: "2%", TransportationExpense: "4%")



var historyForPreviews = [exampleResultForPreviews]

