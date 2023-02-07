//
//  InputValueTitleView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 7/2/2023.
//

import SwiftUI

struct InputValueTitleView: View {
    let TitleOfInput : String
    var body: some View {
        HStack {
            Text("\(TitleOfInput) : ")
                .multilineTextAlignment(.leading)
            
            
            TextField("Input", text: .constant(""))
                .multilineTextAlignment(.trailing)
        }
    }
}

struct InputValueTitleView_Previews: PreviewProvider {
    static var previews: some View {
        InputValueTitleView(TitleOfInput: "Income/CashFlow")
    }
}
