//
//  OutputValueTitleView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 9/2/2023.
//

import SwiftUI

struct OutputValueTitleView: View {
    let titleOfOutput : String
    var outputValue: String
    var body: some View {
        HStack {
            Text("\(titleOfOutput) : ")
                .multilineTextAlignment(.leading)
                .font(Font.custom("HelveticaNeue", size: 18))
            Spacer()
            
           Text("\(outputValue)")
                .multilineTextAlignment(.trailing)
                .font(Font.custom("HelveticaNeue", size: 18))
        }
    }
}
struct OutputValueTitleView_Previews: PreviewProvider {
    static var previews: some View {
        OutputValueTitleView(titleOfOutput: "Income/CashFlow", outputValue: "23")
    }
}
