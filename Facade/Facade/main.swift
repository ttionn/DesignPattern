//
//  main.swift
//  Facade
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Facade Pattern provides a unified interface to a set of interfaces in a subsystem. Facade defines a high-level interface that makes the subsystem easier to use.
 */

/*  Design Principle
 *  Principle of Least Knowledge: talk only to your immediate friends.
 */

print("The Facade Pattern")

let maintenance = AutoMaintenance(engine: V6Engine(), tire: Bridgestone(), windshield: Murano(), coolant: BlueLongLife(), battery: NissanBattery())

print("# Facade for basic check #")
maintenance.basicCheck()

print("# Facade for full check #")
maintenance.fullCheck()
