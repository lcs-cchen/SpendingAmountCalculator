//
//  CashflowIncomeView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

struct CashflowIncomeView: View {
    
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
                        InputValueTitleView(TitleOfInput: "Monthly Income/CashFlow")
                        
                        InputValueTitleView(TitleOfInput: "Monthly Bill Expenses")
                        
                        InputValueTitleView(TitleOfInput: "Monthly Investments")
                        
                        InputValueTitleView(TitleOfInput: "Monthly Food Expenses")
                        
                        InputValueTitleView(TitleOfInput: "Monthly Transportation Expenses")
                        
                        
                        
                    }
                    .padding(.horizontal, 60)
                    

                    
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
