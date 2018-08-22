//
//  Observable.swift
//  Observer
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Observable {
    func register(_ observer: Observer)
    func remove(_ observer: Observer)
    func notifyObservers()
}

class WeatherData: Observable {
    
    private var temperature: Float = 0.0
    private var humidity: Float = 0.0
    private var pressure: Float = 0.0
    
    var observers: [Observer] = []
    
    func register(_ observer: Observer) {
        observers.append(observer)
    }
    
    func remove(_ observer: Observer) {
        observers = observers.filter { $0.uuid != observer.uuid }
    }
    
    func notifyObservers() {
        observers.forEach { $0.update() }
    }
    
    func setChanged(temperature: Float, humidity: Float, pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        
        notifyObservers()
    }
    
    func getTemperature() -> Float {
        return temperature
    }
    
    func getHumidity() -> Float {
        return humidity
    }
    
    func getPressure() -> Float {
        return pressure
    }
    
}
