//
//  BrandGridView.swift
//  Touchdown
//
//  Created by clydies freeman on 1/21/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
    
            })//: GRID
            .frame(height: 200)
            .padding(15)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView().previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
