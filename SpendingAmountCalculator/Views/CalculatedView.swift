//
//  CalculatedView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 13/2/2023.
//

import SwiftUI

struct CalculatedView: View {
    let priorResult: result
   
    var body: some View {
        Group{
            HStack{
                Text("Budget")
                    .font(Font.custom("HelveticaNeue", size: 50))
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Text("Income:")
                .underline()
                .bold()
            Text(priorResult.Income)
            Text("Percentages:")
                .underline()
                .bold()
            Group{
                OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.Bills)
                OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.FoodExpenses)
                OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.Investments)
                OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.TransportationExpense)
                
                
            }
            .font(Font.custom("HelveticaNeue", size: 18))
            .padding(.vertical, 10)
            
            Spacer()
            HStack{
                VStack{
                    Text("total Disposible income")
                    Text("\(priorResult.Budget)")
                }
                Text("\(priorResult.BudgetPercentage)% left")
            }
            Spacer()
        }
    }
}

struct CalculatedView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatedView(priorResult: exampleResultForPreviews)
    }
}
