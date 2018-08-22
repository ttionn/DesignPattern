//
//  AbstractFactory.swift
//  Factory
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol CPU {
    var type: String { get }
}

struct I7CPU: CPU {
    let type = "Intel Core i7"
}

struct I5CPU: CPU {
    let type = "Intel Core i5"
}

protocol RAM {
    var size: String { get }
}

struct BigRAM: RAM {
    let size = "16GB DDR3"
}

struct NormalRAM: RAM {
    let size = "8GB DDR3"
}

protocol SSD {
    var size: String { get }
}

struct BigSSD: SSD {
    let size = "256G SSD"
}

struct NormalSSD: SSD {
    let size = "128G SSD"
}

protocol Display {
    var inch: String { get }
}

struct RetinaDisplay: Display {
    let inch = "15-inch Retina Display"
}

struct NormalDisplay: Display {
    let inch = "13-inch Normal Display"
}

protocol CPUFactory {
    func getCPU() -> CPU
}

struct HighPerformanceCPU: CPUFactory {
    func getCPU() -> CPU {
        return I7CPU()
    }
}

struct RegularPerformanceCPU: CPUFactory {
    func getCPU() -> CPU {
        return I5CPU()
    }
}

protocol RAMFactory {
    func getRAM() -> RAM
}

struct HighPerformanceRAM: RAMFactory {
    func getRAM() -> RAM {
        return BigRAM()
    }
}

struct RegularPerformanceRAM: RAMFactory {
    func getRAM() -> RAM {
        return NormalRAM()
    }
}

protocol SSDFactory {
    func getSSD() -> SSD
}

struct HighPerformanceSSD: SSDFactory {
    func getSSD() -> SSD {
        return BigSSD()
    }
}

struct RegularPerformanceSSD: SSDFactory {
    func getSSD() -> SSD {
        return NormalSSD()
    }
}

protocol DisplayFactory {
    func getDisplay() -> Display
}

struct HighPerformanceDisplay: DisplayFactory {
    func getDisplay() -> Display {
        return RetinaDisplay()
    }
}

struct RegularPerformanceDisplay: DisplayFactory {
    func getDisplay() -> Display {
        return NormalDisplay()
    }
}

protocol ComputerFactory {
    var cpuFactory: CPUFactory { get }
    var ramFactory: RAMFactory { get }
    var ssdFactory: SSDFactory { get }
    var displayFactory: DisplayFactory { get }
    
    func getCPU() -> CPU
    func getRAM() -> RAM
    func getSSD() -> SSD
    func getDisplay() -> Display
}

extension ComputerFactory {
    func getCPU() -> CPU {
        return cpuFactory.getCPU()
    }
    
    func getRAM() -> RAM {
        return ramFactory.getRAM()
    }
    
    func getSSD() -> SSD {
        return ssdFactory.getSSD()
    }
    
    func getDisplay() -> Display {
        return displayFactory.getDisplay()
    }
    
    var description: String {
        return "Computer: \(getCPU().type), \(getRAM().size), \(getSSD().size), \(getDisplay().inch)"
    }
}

struct HighPerformanceComputerFactory: ComputerFactory {
    var cpuFactory: CPUFactory
    var ramFactory: RAMFactory
    var ssdFactory: SSDFactory
    var displayFactory: DisplayFactory
}

struct RegularPerformanceComputerFactory: ComputerFactory {
    var cpuFactory: CPUFactory
    var ramFactory: RAMFactory
    var ssdFactory: SSDFactory
    var displayFactory: DisplayFactory
}
