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
    @State var computedResult: [Result] = []

    var monthlyIncomeAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyIncome = Double(monthlyIncome) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyIncome
    }
    var monthlyBillsAsOptionalDouble: Double? {
        
        guard let unwrappedMonthlyBills = Double(monthlyBills) else {
            return nil
        }
        
        // Return the unwrapped value
        return unwrappedMonthlyBills
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
    var  monthlyIncomeUnwrapped: Double {
        
        // Try to unwrap the optional Double
        // Get the value as an actual Double, not optional (STEP 3)
        guard let monthlyIncomeAsDouble = monthlyIncomeAsOptionalDouble else  {
            
            return 0
        }
        
        // We now know that we have a Double, so find its square root
        let monthlyIncomeUnwrapped = monthlyIncomeAsDouble

        // Now return the formatted String
        // (STEP 4)
        return monthlyIncomeUnwrapped
        
    }
    var monthlyBillsUnwrapped: Double {
        
        // Try to unwrap the optional Double
        // Get the value as an actual Double, not optional (STEP 3)
        guard let monthlyBillsAsDouble = monthlyBillsAsOptionalDouble else  {
            
            return 0
        }
        
        // We now know that we have a Double, so find its square root
        let monthlyBillsUnwrapped = monthlyBillsAsDouble

        // Now return the formatted String
        // (STEP 4)
        return monthlyBillsUnwrapped
        
    }
    var monthlyInvestmentsUnwrapped: Double {
        
        // Try to unwrap the optional Double
        // Get the value as an actual Double, not optional (STEP 3)
        guard let monthlyInvestmentsAsDouble = monthlyInvestmentsAsOptionalDouble else  {
            
            return 0
        }
        

        let monthlyInvestmentsUnwrapped = monthlyInvestmentsAsDouble

        // Now return the formatted String
        // (STEP 4)
        return monthlyInvestmentsUnwrapped
        
    }
    var monthlyFoodExpensesUnwrapped: Double {
        
        // Try to unwrap the optional Double
        // Get the value as an actual Double, not optional (STEP 3)
        guard let monthlyFoodExpensesAsDouble = monthlyFoodExpensesAsOptionalDouble else  {
            
            return 0
        }
        
        // We now know that we have a Double, so find its square root
        let monthlyFoodExpensesUnwrapped = monthlyFoodExpensesAsDouble

        // Now return the formatted String
        // (STEP 4)
        return monthlyFoodExpensesUnwrapped
        
    }
    var monthlyTransportationExpensesUnwrapped: Double {
        
        // Try to unwrap the optional Double
        // Get the value as an actual Double, not optional (STEP 3)
        guard let monthlyTransportationExpensesAsDouble = monthlyTransportationExpensesAsOptionalDouble else  {
            
            return 0
        }
        
        // We now know that we have a Double, so find its square root
        let monthlyTransportationExpensesUnwrapped = monthlyTransportationExpensesAsDouble

        // Now return the formatted String
        // (STEP 4)
        return monthlyTransportationExpensesUnwrapped
        
    }
    @Binding var billPercentage: String
    
   
        
    var body: some View {
        ZStack{
            Color("Light Grey")
                .ignoresSafeArea(edges: .top)
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
                   
                    }
                    
                }
                
            }
            
        }
    }

struct CashflowIncomeView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            Group{
                CashflowIncomeView(billPercentage: Binding.constant(" "))
                    .tabItem {
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Cashflow/Income")
                        
                    }
                
                
                
                BudgetView()
                    .tabItem {
                        Image(systemName: "dollarsign.square")
                        Text("Budjet")
                    }
                
            }
            
        }
        
    }
}
