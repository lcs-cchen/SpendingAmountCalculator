//
//  CashflowIncomeView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

struct CashflowIncomeView: View {
    
    @State var monthlyIncome = ""
    @State var monthlyBills = ""
    @State var monthlyInvestments = ""
    @State var monthlyFoodExpenses = ""
    @State var monthlyTransportationExpenses = ""
    
    var body: some View {
        ZStack{
            Color("Light Grey")
                .ignoresSafeArea()
            
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
                Rectangle()
                    .frame(width: 400, height: 80)
                    .foregroundColor(.white)
                    .padding(.bottom, -30)
            }
            ZStack{
                VStack(spacing: 10){
                    Spacer()
                    Group{
                        HStack {
                            Text("CashFlow/Income")
                                .font(.largeTitle)
                                .underline()
                                .bold()
                            Spacer()
                        }
                        InputValueTitleView(titleOfInput: "Monthly Income/CashFlow", inputValue: $monthlyIncome)

                        InputValueTitleView(titleOfInput: "Monthly Bill Expenses", inputValue: $monthlyBills)

                        InputValueTitleView(titleOfInput: "Monthly Investments", inputValue: $monthlyInvestments)

                        InputValueTitleView(titleOfInput: "Monthly Food Expenses", inputValue: $monthlyFoodExpenses)

                        InputValueTitleView(titleOfInput: "Monthly Transportation Expenses", inputValue: $monthlyTransportationExpenses)
                        
                        
                        
                    }
                    .padding(.horizontal, 60)
                    
                    Spacer()
                    Group{
                        VStack{
                            Text("Total Disposable income:")
                                .font(.title2)
                            Text("$4500")
                                .font(Font.custom("HelveticaNeue", size: 60))
                                .bold()
                        }
                    }
                    Spacer()
                    Group{
                        HStack{
                            VStack{
                             
                            }
                            
                        }
                    }
                    
                }
                
            }
            
        }
    }
}
struct CashflowIncomeView_Previews: PreviewProvider {
    static var previews: some View {
        CashflowIncomeView()
    }
}
