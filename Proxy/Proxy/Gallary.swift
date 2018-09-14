//
//  Gallary.swift
//  Proxy
//
//  Created by TTSY on 2018/9/14.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Gallary {
    init(pictures: [Picture])
    func displayPicture(at index: Int)
    func priceForPicture(at index: Int)
    func printPicture(at index: Int)    // Time consuming work
}

class RealGallary: Gallary {
    
    let pictures: [Picture]
    let printer: Printer
    
    required init(pictures: [Picture]) {
        self.pictures = pictures
        self.printer = Printer()
    }
    
    func displayPicture(at index: Int) {
        let picture = pictures[index]
        print("This is \(picture.name).")
    }
    
    func priceForPicture(at index: Int) {
        let picture = pictures[index]
        print("The price for \(picture.name) is \(picture.price).")
    }
    
    func printPicture(at index: Int) {
        let picture = pictures[index]
        printer.paint(picture: picture)
    }
    
}

class ProxyGallary: Gallary {

    let pictures: [Picture]
    var gallary: RealGallary?
    
    required init(pictures: [Picture]) {
        self.pictures = pictures
    }

    func displayPicture(at index: Int) {
        let picture = pictures[index]
        print("This is \(picture.name).")
    }
    
    func priceForPicture(at index: Int) {
        let picture = pictures[index]
        print("The price for \(picture.name) is $\(picture.price).")
    }
    
    func printPicture(at index: Int) {
        if gallary == nil {
            gallary = RealGallary(pictures: pictures)
        }
        gallary?.printPicture(at: index)
    }
    
}

struct Picture {
    let name: String
    let price: Int
}

struct Printer {
    init() {
        sleep(5)
        print("After 5 seconds...")
    }
    
    func paint(picture: Picture) {
        print("\(picture.name) is painting now.")
    }
}
