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

                         
        }
        
    }
}
struct CashflowIncomeView_Previews: PreviewProvider {
    static var previews: some View {
        CashflowIncomeView()
    }
}
