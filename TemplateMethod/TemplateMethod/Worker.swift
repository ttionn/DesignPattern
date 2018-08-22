//
//  Worker.swift
//  TemplateMethod
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Worker {
    func wakeup()
    func exercise()
    func eat()
    func work()
}

extension Worker {
    func startDay() {
        wakeup()
        exercise()
        eat()
        work()
    }
    
    func wakeup() {
        print("Wake up at 6:30")
    }
}

struct Programmer: Worker {
    func exercise() {
        print("Running for 15 minutes")
    }
    
    func eat() {
        print("Eat a sandwich")
    }
    
    func work() {
        print("Begin programming")
    }
}

struct Teacher: Worker {
    func exercise() {
        print("Walk for 30 minutes")
    }
    
    func eat() {
        print("Eat some bread and a glass of milk")
    }
    
    func work() {
        print("Teach a class")
    }
}
