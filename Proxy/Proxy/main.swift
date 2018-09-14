//
//  main.swift
//  Proxy
//
//  Created by TTSY on 2018/9/14.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Proxy Pattern provides a surrogate or placeholder for another object to control access to it.
 */

print("The Proxy Pattern")

let pictures = [Picture(name: "Blue Sky", price: 100),
                Picture(name: "Donald Duck", price: 500),
                Picture(name: "Mediterranean", price: 200),
                Picture(name: "Mickey Mouse", price: 300)]

let gallary = ProxyGallary(pictures: pictures)
gallary.displayPicture(at: 1)
gallary.priceForPicture(at: 3)
gallary.printPicture(at: 2)
gallary.printPicture(at: 0)
