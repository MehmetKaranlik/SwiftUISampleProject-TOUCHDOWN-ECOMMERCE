//
//  BundleDecoderExtension.swift
//  TouchDown
//
//  Created by mehmet karanlık on 22.12.2021.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(file:String) -> T {
         // 1- Locate Json file
        guard let url: URL = self.url(forResource: file, withExtension: nil)
        else {
        fatalError("Failed to locate \(file) in bundle")
        }
         //  2- Create a property for data
        guard let data: Data = try? Data(contentsOf: url)
        else  {
            fatalError("Failed to load \(file) from bundle.")
        }
         // 3- Create a decoder
        let decoder : JSONDecoder  = JSONDecoder()
        
         // 4. Create a property for the decoded data
        do {
            let loaded : T = try decoder.decode(T.self, from: data)
            return loaded
        } catch {
            print(error)
            fatalError("Failed to decode \(file) from bundle.")
        
        }
    }
}
