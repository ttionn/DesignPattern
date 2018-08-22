//
//  main.swift
//  Factory
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Factory Method Pattern  defines an interface for creating an object, but lets subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.
 */

/*  The Abstract Factory Pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.
 */

/*  Design Principle:
 *  Depend upon abstractions. Do not depend on concrete classes.
 */

print("The Factory Method Pattern")

let macBookAir = CodingWithMacBookAir()
macBookAir.coding()

let macBookPro = CodingWithMacBookPro()
macBookPro.coding()

let macMini = CodingWithMacMini()
macMini.coding()

print("The Abstract Factory Pattern")

var cpuFactory: CPUFactory = HighPerformanceCPU()
var ramFactory: RAMFactory = HighPerformanceRAM()
var ssdFactory: SSDFactory = HighPerformanceSSD()
var displayFactory: DisplayFactory = HighPerformanceDisplay()

var computer: ComputerFactory = HighPerformanceComputerFactory(cpuFactory: cpuFactory, ramFactory: ramFactory, ssdFactory: ssdFactory, displayFactory: displayFactory)
print(computer.description)

cpuFactory = RegularPerformanceCPU()
ramFactory = RegularPerformanceRAM()
ssdFactory = RegularPerformanceSSD()
displayFactory = RegularPerformanceDisplay()

computer = RegularPerformanceComputerFactory(cpuFactory: cpuFactory, ramFactory: ramFactory, ssdFactory: ssdFactory, displayFactory: displayFactory)
print(computer.description)
