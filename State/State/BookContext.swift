//
//  BookContext.swift
//  State
//
//  Created by TTSY on 2018/8/31.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Context {
    func setState(_ state: BookState)
}

class BookContext: Context {
    
    lazy var bookState: BookState = {
        return BookOnShelfState(context: self)
    }()
    
    func borrow() {
        bookState.borrow()
    }
    
    func sendBack() {
        bookState.sendBack()
    }
    
    func reserve() {
        bookState.reserve()
    }
    
    func cancel() {
        bookState.cancel()
    }
    
    func fetch() {
        bookState.fetch()
    }
    
    func setState(_ state: BookState) {
        bookState = state
    }
    
}
