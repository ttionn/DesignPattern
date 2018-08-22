//
//  Duck.swift
//  Strategy
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

class Duck {
    
    private var flyBehavior: FlyBehavior
    private var quackBehavior: QuackBehavior
    
    init(fly: FlyBehavior, quack: QuackBehavior) {
        flyBehavior = fly
        quackBehavior = quack
    }
    
    func swim() {
        print("I like swimming!")
    }
    
    func fly() {
        flyBehavior.fly()
    }
    
    func quack() {
        quackBehavior.quack()
    }
    
    func display() {
        print("Looks like a duck.")
    }
    
    func setFlyBehavior(_ fly: FlyBehavior) {
        flyBehavior = fly
    }
    
    func setQuackBehavior(_ quack: QuackBehavior) {
        quackBehavior = quack
    }
    
}

class MallardDuck: Duck {
    
    init() {
        super.init(fly: FlyWithWings(), quack: Quack())
    }
    
    override func display() {
        print("I'm a real Mallard duck.")
    }
    
}

class ModelDuck: Duck {
    
    init() {
        super.init(fly: FlyNoWay(), quack: Squeak())
    }
    
    override func display() {
        print("I'm a model duck.")
    }
    
}
