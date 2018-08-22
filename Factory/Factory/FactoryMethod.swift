//
//  FactoryMethod.swift
//  Factory
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Mac {
    var type: String { get }
}

struct MacMini: Mac {
    let type = "Mac Mini"
}

struct MacBookAir: Mac {
    let type = "MacBook Air"
}

struct MacBookPro: Mac {
    let type = "MacBook Pro"
}

protocol CodingWithMac {
    func getMac() -> Mac
}

extension CodingWithMac {
    var mac: Mac {
        return getMac()
    }
    func coding() {
        print("I am coding with a \(mac.type)")
    }
}

class CodingWithMacMini: CodingWithMac {
    func getMac() -> Mac {
        return MacMini()
    }
}

class CodingWithMacBookAir: CodingWithMac {
    func getMac() -> Mac {
        return MacBookAir()
    }
}

class CodingWithMacBookPro: CodingWithMac {
    func getMac() -> Mac {
        return MacBookPro()
    }
}
