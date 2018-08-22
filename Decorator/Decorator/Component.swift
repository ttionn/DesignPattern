//
//  Component.swift
//  Decorator
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Coffee {
    func cost() -> Double
    func condiment() -> String
}

extension Coffee {
    var description: String {
        return "\(condiment()): $\(cost())"
    }
}

struct NormalCoffee: Coffee {
    
    func cost() -> Double {
        return 1.0
    }
    
    func condiment() -> String {
        return "Coffee"
    }
    
}
