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
        VStack{
            
            HStack{
                Spacer()
                VStack{
                    Text("Total Disposible Income:")
                        .multilineTextAlignment(.center)
                    Text("$\(priorResult.Budget)")
                        .font(Font.custom("HelveticaNeue", size: 30))
                        .lineLimit(1)
                        .bold()
                    
                }
                
                VStack{
                    Text("Percentage left:")
                        .multilineTextAlignment(.center)
                    Text("\(priorResult.BudgetPercentage)%")
                        .font(Font.custom("HelveticaNeue", size: 30))
                        .multilineTextAlignment(.center)
                        .bold()
                    
                    
                }
                Spacer()
            }
            .font(Font.custom("HelveticaNeue", size: 15))
        }
        .padding(.vertical, 20)
    }
}
struct FinalBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        FinalBudgetView(priorResult: exampleResultForPreviews)
    }
}
