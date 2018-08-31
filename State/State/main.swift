//
//  main.swift
//  State
//
//  Created by TTSY on 2018/8/31.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The State Pattern allows an object to alert its behavior when its internal state changes. The object will appear to change its class.
 */

print("The State Pattern")

let bookContext = BookContext()
bookContext.sendBack()
bookContext.reserve()
bookContext.cancel()
bookContext.borrow()
bookContext.fetch()
bookContext.cancel()
bookContext.sendBack()
