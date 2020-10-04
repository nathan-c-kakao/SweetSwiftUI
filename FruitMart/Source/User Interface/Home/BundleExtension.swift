//
//  BundleExtension.swift
//  FruitMart
//
//  Created by nadan.choi on 2020/10/02.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(filename: String, as type: T.Type) -> T {
        guard let url = self.url(forResource: filename, withExtension: nil) else {
            fatalError("no \(filename)")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("\(url) invalid")
        }
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("failed to decode")
        }
        return decodedData
    }
}
