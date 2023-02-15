//
//  FinalBudgetView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 14/2/2023.
//

import SwiftUI

struct FinalBudgetView: View {
    let priorResult: result
    
    var body: some View {
        HStack{
            VStack{
                Text("total Disposible income")
                Text("\(priorResult.Budget)")
            }
            Text("\(priorResult.BudgetPercentage)% left")
        }
    }
}

struct FinalBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        FinalBudgetView(priorResult: exampleResultForPreviews)
    }
}
