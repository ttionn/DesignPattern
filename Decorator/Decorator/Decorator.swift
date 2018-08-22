//
//  Decorator.swift
//  Decorator
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol CondimentDecorator: Coffee {}

struct MilkCondiment: CondimentDecorator {
    
    let coffee: Coffee
    
    func cost() -> Double {
        return coffee.cost() + 0.1
    }
    
    func condiment() -> String {
        return coffee.condiment() + ", milk"
    }
    
}

struct SugarCondiment: CondimentDecorator {
    
    let coffee: Coffee
    
    func cost() -> Double {
        return coffee.cost() + 0.05
    }
    
    func condiment() -> String {
        return coffee.condiment() + ", sugar"
    }
    
}
