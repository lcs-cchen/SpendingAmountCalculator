//
//  BudgetView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 9/2/2023.
//

import SwiftUI

struct BudgetView: View {
    
    @Binding var history: [result]
    var body: some View {
        ZStack{
            Color("Light Grey")
                .ignoresSafeArea()
            Group{
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(width: 330, height: 475)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    Spacer()
                    Rectangle()
                        .frame(width: 330, height: 150)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    Spacer()
                }
            }
            ZStack{
                VStack(alignment: .leading, spacing: 10){
                    Spacer(minLength: 50)
                    List(history.reversed()) { somePriorResult in
                        CalculatedView(priorResult: somePriorResult)
                    }
                    .padding(.horizontal, 60)
                    
                }
            }
        }
    }
}

struct BudgetView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            Group{
                CashflowIncomeView()
                    .tabItem {
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Cashflow/Income")
                        
                    }
                
                
                
                BudgetView(history: Binding.constant(historyForPreviews))
                    .tabItem {
                        Image(systemName: "dollarsign.square")
                        Text("Budjet")
                    }
                
            }
            
        }
    }
}
