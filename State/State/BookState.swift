//
//  BookState.swift
//  State
//
//  Created by TTSY on 2018/8/31.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol BookState {
    func borrow()
    func sendBack()
    func reserve()
    func cancel()
    func fetch()
}

struct BookOnShelfState: BookState {
    
    let context: BookContext
    
    func borrow() {
        print("You have borrowed me.")
        context.setState(BookLendState(context: context))
    }
    
    func sendBack() {
        print("No actions")
    }
    
    func reserve() {
        print("You have reserved me.")
        context.setState(BookReservedState(context: context))
    }
    
    func cancel() {
        print("No Actions")
    }
    
    func fetch() {
        print("No actions")
    }
}

struct BookLendState: BookState {
    
    let context: BookContext
    
    func borrow() {
        print("No actions")
    }
    
    func sendBack() {
        print("You have returned me.")
        context.setState(BookOnShelfState(context: context))
    }
    
    func reserve() {
        print("No actions")
    }
    
    func cancel() {
        print("No Actions")
    }
    
    func fetch() {
        print("No actions")
    }
}

struct BookReservedState: BookState {
    
    let context: BookContext
    
    func borrow() {
        print("No Actions")
    }
    
    func sendBack() {
        print("No Actions")
    }
    
    func reserve() {
        print("No Actions")
    }
    
    func cancel() {
        print("The reservation has been cancelled.")
        context.setState(BookOnShelfState(context: context))
    }
    
    func fetch() {
        print("You have borrowed me.")
        context.setState(BookLendState(context: context))
    }
}
