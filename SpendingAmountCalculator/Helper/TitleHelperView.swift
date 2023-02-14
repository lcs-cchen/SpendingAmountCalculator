//
//  SwiftUIView.swift
//  SpendingAmountCalculator
//
//  Created by Cyrus Chen on 13/2/2023.
//

import SwiftUI

struct TitleHelperView: View {
    var body: some View {
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
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TitleHelperView()
    }
}
