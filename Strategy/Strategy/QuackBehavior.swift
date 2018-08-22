//
//  QuackBehavior.swift
//  Strategy
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol QuackBehavior {
    func quack()
}

class Quack: QuackBehavior {
    func quack() {
        print("Quack!")
    }
}

class MuteQuack: QuackBehavior {
    func quack() {
        print("I can't quack.")
    }
}

class Squeak: QuackBehavior {
    func quack() {
        print("Squeak!")
    }
}
