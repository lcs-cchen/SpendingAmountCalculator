//
//  CashflowIncomeView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

struct CashflowIncomeView: View {
    
    @Binding var history: [result]
    @State var monthlyIncome = ""
    @State var monthlyBills = ""
    @State var monthlyInvestments = ""
    @State var monthlyFoodExpenses = ""
    @State var monthlyTransportationExpenses = ""
    
    var monthlyIncomeAsDouble: Double {
        guard let unwrapped = Double(monthlyIncome) else {
            return 0
        }
        
        return unwrapped
    }
    var monthlyBillsAsDouble: Double {
        
        guard let unwrapped = Double(monthlyBills) else {
            return 0
        }
        
        return unwrapped
    }
    
    var monthlyInvestmentsAsDouble: Double {
        
        guard let unwrapped = Double(monthlyInvestments) else {
            return 0
        }
        
        return unwrapped
    }
    var monthlyFoodExpensesAsDouble: Double {
        
        guard let unwrapped = Double(monthlyFoodExpenses) else {
            return 0
        }
        
        return unwrapped
    }
    var monthlyTransportationExpensesAsDouble: Double {
        
        guard let unwrapped = Double(monthlyTransportationExpenses) else {
            return 0
        }
        
        return unwrapped
    }
    
    var findBudgetPercentage: Double {
        let expenses = Double(monthlyFoodExpensesAsDouble + monthlyInvestmentsAsDouble + monthlyTransportationExpensesAsDouble + monthlyBillsAsDouble)
        return ((monthlyIncomeAsDouble-expenses)/monthlyIncomeAsDouble) * 100
    }
    var findBudget: Double {
        let expenses = Double(monthlyFoodExpensesAsDouble + monthlyInvestmentsAsDouble + monthlyTransportationExpensesAsDouble + monthlyBillsAsDouble)
        return ((monthlyIncomeAsDouble-expenses))
    }
    var findBillsPercentage: Double {
        let expense: Double = monthlyBillsAsDouble
        return (expense/monthlyIncomeAsDouble) * 100
    }
    var findInvestmentsPercentage: Double {
        let expense: Double = monthlyInvestmentsAsDouble
        return (expense/monthlyIncomeAsDouble) * 100
    }
    var findFoodExpensesPercentage: Double {
        let expense: Double = monthlyFoodExpensesAsDouble
        return (expense/monthlyIncomeAsDouble) * 100
    }
    var findTransportationExpensesPercentage: Double {
        let expense: Double = monthlyTransportationExpensesAsDouble
        return (expense/monthlyIncomeAsDouble) * 100
    }
    
    
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
                        TitleHelperView()
                        InputValueTitleView(titleOfInput: "Monthly Income/CashFlow", inputValue: $monthlyIncome)
                        
                        InputValueTitleView(titleOfInput: "Monthly Bill Expenses", inputValue: $monthlyBills)
                        
                        InputValueTitleView(titleOfInput: "Monthly Investments", inputValue: $monthlyInvestments)
                        
                        InputValueTitleView(titleOfInput: "Monthly Food Expenses", inputValue: $monthlyFoodExpenses)
                        
                        InputValueTitleView(titleOfInput: "Monthly Transportation Expenses", inputValue: $monthlyTransportationExpenses)
                        
                        Button(action: {
                            let priorResult = result(Income: String(monthlyIncomeAsDouble), Bills: String(findBillsPercentage), Investments: String(findInvestmentsPercentage), FoodExpenses: String(findFoodExpensesPercentage), TransportationExpense: String(findTransportationExpensesPercentage), Budget: String(findBudget), BudgetPercentage: String(findBudgetPercentage))
                            history.append(priorResult)
                        }, label: {
                            Text("Save")
                                .font(.headline.smallCaps())
                        })
                        .buttonStyle(.bordered)
                        
                        
                    }
                    .padding(.horizontal, 60)
                    
                    Spacer(minLength: 100)
                    Group{
                        VStack{
                            Text("Total Disposable income:")
                                .font(.title2)
                            Text("\(findBudget.formatted(.number.precision(.fractionLength(2))))")
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
                CashflowIncomeView(history: Binding.constant(historyForPreviews))
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
