//
//  Result.swift
//  FindTheRoots
//
//  Created by Cyrus Chen on 24/1/2023.
//

import Foundation

struct Result: Identifiable{
    let id = UUID()
    let a: Double
    let b: Double
    let c: Double
    let roots: String
}

let resultForPreviews = Result(a: 1, b: -6, c: 8, )
