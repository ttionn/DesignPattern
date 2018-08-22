//
//  main.swift
//  Decorator
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Decorator Pattern attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.
 */

/*  Design Principle:
 *  Classes should be open for extension but closed for modification.
 *  Program to interface, not implementation.
 */

print("The Decorator Pattern")

var coffee: Coffee = NormalCoffee()
print(coffee.description)

coffee = MilkCondiment(coffee: coffee)
print(coffee.description)

coffee = SugarCondiment(coffee: coffee)
print(coffee.description)
