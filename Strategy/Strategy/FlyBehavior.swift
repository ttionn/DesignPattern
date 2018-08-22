//
//  FlyBehavior.swift
//  Strategy
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol FlyBehavior {
    func fly()
}

class FlyWithWings: FlyBehavior {
    func fly() {
        print("I'm flying!")
    }
}

class FlyNoWay: FlyBehavior {
    func fly() {
        print("I can't fly.")
    }
}

class FlyRocketPowered: FlyBehavior {
    func fly() {
        print("I'm flying with a rocket!")
    }
}
