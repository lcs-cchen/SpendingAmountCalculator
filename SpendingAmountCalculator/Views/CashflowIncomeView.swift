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
    
    var monthlyIncomeAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyIncome = Double(monthlyIncome) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyIncome
    }
    var monthlBillsAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyBills = Double(monthlyBills) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyBills
    }
    var monthlyAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyIncome = Double(monthlyIncome) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyIncome
    }
    var monthlyInvestmentsAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyInvestments = Double(monthlyInvestments) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyInvestments
    }
    var monthlyFoodExpensesAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyFoodExpenses = Double(monthlyFoodExpenses) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyFoodExpenses
    }
    var monthlyTransportationExpensesAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyTransportationExpenses = Double(monthlyTransportationExpenses) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyTransportationExpenses
    }
    
    
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
                VStack(spacing: 10){
                    Spacer()
                    Group{
                            VStack {
                                HStack{
                                    Text("Cashflow")
                                        .font(Font.custom("HelveticaNeue", size: 50))
                                        .bold()
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                
                                HStack{
                                    Text("/Income")
                                        .font(Font.custom("HelveticaNeue", size: 50))
                                        .bold()
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            
                        }
                       
                        InputValueTitleView(titleOfInput: "Monthly Income/CashFlow", inputValue: $monthlyIncome)

                        InputValueTitleView(titleOfInput: "Monthly Bill Expenses", inputValue: $monthlyBills)

                        InputValueTitleView(titleOfInput: "Monthly Investments", inputValue: $monthlyInvestments)

                        InputValueTitleView(titleOfInput: "Monthly Food Expenses", inputValue: $monthlyFoodExpenses)

                        InputValueTitleView(titleOfInput: "Monthly Transportation Expenses", inputValue: $monthlyTransportationExpenses)
                        
                        
                        
                    }
                    .padding(.horizontal, 60)
                    
                    Spacer(minLength: 100)
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
        TabView {
            Group{
                CashflowIncomeView()
                    .tabItem {
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Cashflow/Income")
                        
                    }
                
                
                
                CashflowIncomeView()
                    .tabItem {
                        Image(systemName: "dollarsign.square")
                        Text("Budjet")
                    }
                
            }
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color.white, for: .tabBar)
            
        }
        
    }
}
