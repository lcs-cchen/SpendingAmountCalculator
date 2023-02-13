//
//  BudgetView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 9/2/2023.
//

import SwiftUI

struct BudgetView: View {
    
    let priorResult: result
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
                        Text("$200")
                        Text("Percentages:")
                            .underline()
                            .bold()
                        Group{
                            OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.Bills)
                            OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.Bills)
                            OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.Bills)
                            OutputValueTitleView(titleOfOutput: "Expenses", outputValue: priorResult.Bills)
                            
                            
                        }
                        .font(Font.custom("HelveticaNeue", size: 18))
                        .padding(.vertical, 10)
                        
                        Spacer()
                        HStack{
                            VStack{
                                Text("total Disposible income")
                                Text("700")
                            }
                            Text("10% left")
                        }
                        Spacer()
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
                CashflowIncomeView(billPercentage: Binding.constant(" "))
                    .tabItem {
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Cashflow/Income")
                        
                    }
                
                
                
                BudgetView(priorResult: exampleResultForPreviews)
                    .tabItem {
                        Image(systemName: "dollarsign.square")
                        Text("Budjet")
                    }
                
            }
            
        }
    }
}
