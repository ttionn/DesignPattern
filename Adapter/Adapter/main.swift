//
//  main.swift
//  Adapter
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Adapter Pattern converts the interface of a class into another interface the clients expect. Adapter lets classes work together that couldn’t otherwise because of incompatible interfaces.
 */

print("The Adapter Pattern")

let vgaCable = VGACable()
var computer = Computer(monitor: "15 Inch", vga: vgaCable)
computer.watch(movie: "Iron Man")

let hdmlCable = HDMICable()
let hdmlAdpater = HDMIAdapter(hdmi: hdmlCable)
computer = Computer(monitor: "27 Inch", vga: hdmlAdpater)
computer.watch(movie: "The Avengers")
