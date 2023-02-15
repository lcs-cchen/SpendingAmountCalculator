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
                Text("Total Disposible Income:")
                    .multilineTextAlignment(.center)
                Text("$\(priorResult.Budget)")
                    .font(Font.custom("HelveticaNeue", size: 50))
                    .bold()
                    .frame(width: 200,height: 50)
                    .scaledToFit()
            }
           
            VStack{
                Text("Percentage left:")
                    .multilineTextAlignment(.center)
                Text("\(priorResult.BudgetPercentage)%")
                    .font(Font.custom("HelveticaNeue", size: 50))
                    .multilineTextAlignment(.center)
                    .bold()
                    
                
            }
        }
        .font(Font.custom("HelveticaNeue", size: 15))
    }
}

struct FinalBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        FinalBudgetView(priorResult: exampleResultForPreviews)
    }
}
