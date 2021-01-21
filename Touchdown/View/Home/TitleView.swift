//
//  TitleView.swift
//  Touchdown
//
//  Created by clydies freeman on 1/21/21.
//

import SwiftUI

struct TitleView: View {
    
    
    // MARK: - PROPERTIES
    var title: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding()
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}


 
// MARK: - PREVIEW

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
