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
            VStack(spacing: 10){
                
                
                    VStack(spacing: 5){
                        HStack{
                            Text("Income:")
                                .multilineTextAlignment(.leading)
                                .underline()
                                .bold()
                         Spacer()
                        }
                        
                        HStack{
                            Text(priorResult.Income)
                                .font(Font.custom("HelveticaNeue", size: 50))
                                .bold()
                            Spacer()
                        }
                        .padding(.bottom, -5)
                    
                    
                }
                HStack {
                    Text("Percentages:")
                        .underline()
                        .bold()
                    .multilineTextAlignment(.leading)
                    Spacer()
                }
                
                OutputValueTitleView(titleOfOutput: "Bills Percentage", outputValue: priorResult.Bills)
                OutputValueTitleView(titleOfOutput: "Food Expense Percentage", outputValue: priorResult.FoodExpenses)
                OutputValueTitleView(titleOfOutput: "Investments Percentage", outputValue: priorResult.Investments)
                OutputValueTitleView(titleOfOutput: "Transportation Percentage", outputValue: "\(priorResult.TransportationExpense)")
                
                
                
                    
                    
                
                Spacer()
                
            }
            .font(Font.custom("HelveticaNeue", size: 25))
        
        }
    }
}

struct CalculatedView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatedView(priorResult: exampleResultForPreviews)
    }
}
