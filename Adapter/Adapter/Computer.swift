//
//  Computer.swift
//  Adapter
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

class Computer {
    
    let monitor: String
    let vga: VGA
    
    init(monitor: String, vga: VGA) {
        self.monitor = monitor
        self.vga = vga
    }
    
    func watch(movie: String) {
        vga.transferVideo()
        print("I am watching \(movie) on a \(monitor) monitor")
    }
    
}
