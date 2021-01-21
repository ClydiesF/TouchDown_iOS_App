//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by clydies freeman on 1/20/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. locate the JSON file
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle")
        }
        // 2. Create a property for the data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from Bundle.")
        }
        // 3. Create a decoder
        
        let decoder = JSONDecoder()
        
        // 4. Return the ready-to-use data
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from Bundle")
        }
        
        // 5. Return the ready-to-use data
         return decodedData
    }
}
