//
//  main.swift
//  TemplateMethod
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Template Method Pattern defines the skeleton of an algorithm in a method, deferring someo steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
 */

/*  Design Principle:
 *  Don't call us, we'll call you.
 */

print("The Template Method Pattern")

print("# A Programmer's Day #")
let programmer = Programmer()
programmer.startDay()

print("# A Teacher's Day #")
let teacher = Teacher()
teacher.startDay()
