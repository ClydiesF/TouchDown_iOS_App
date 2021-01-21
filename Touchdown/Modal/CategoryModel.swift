//
//  CategoryModel.swift
//  Touchdown
//
//  Created by clydies freeman on 1/20/21.
//

import Foundation

struct Category: Codable,Identifiable {
    let id: Int
    let name: String
    let image: String
}
