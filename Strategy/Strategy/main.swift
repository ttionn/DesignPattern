//
//  main.swift
//  Strategy
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets algorithm vary independently from clients that use it.
 */

/*  Design Principle:
 *  Identify the aspects of your application that vary and separate them from what stays the same.
 *  Program to an interface, not an implementation.
 *  Favor composition over inheritance.
 */

print("The Strategy Pattern")

let mallard: Duck = MallardDuck()
mallard.display()
mallard.swim()
mallard.fly()
mallard.quack()

let model: Duck = ModelDuck()
model.display()
model.swim()
model.fly()
model.quack()

model.setFlyBehavior(FlyRocketPowered())
model.fly()
model.setQuackBehavior(MuteQuack())
model.quack()
