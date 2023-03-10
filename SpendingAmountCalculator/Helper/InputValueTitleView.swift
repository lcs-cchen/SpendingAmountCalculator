//
//  InputValueTitleView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

struct InputValueTitleView: View {
    let titleOfInput : String
    @Binding var inputValue: String
    var body: some View {
        HStack {
            Text("\(titleOfInput) : ")
                .multilineTextAlignment(.leading)
                .font(Font.custom("HelveticaNeue", size: 18))
            
            
            TextField("Input", text: $inputValue)
                .multilineTextAlignment(.trailing)
                .font(Font.custom("HelveticaNeue", size: 18))
        }
    }
}

struct InputValueTitleView_Previews: PreviewProvider {
    static var previews: some View {
        InputValueTitleView(titleOfInput: "Income/CashFlow", inputValue: Binding.constant(""))
    }
}
