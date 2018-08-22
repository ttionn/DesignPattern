//
//  Observer.swift
//  Observer
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

protocol Observer {
    func update()
}

extension Observer {
    var uuid: String {
        return UUID().uuidString
    }
}

class TemperatureDisplay: Observer {
    
    let observable: WeatherData
    
    init(weatherData: WeatherData) {
        observable = weatherData
        observable.register(self)
    }
    
    func update() {
        let temperature = observable.getTemperature()
        print("Current conditions: \(temperature) F degrees")
    }
    
}

class HumidityDisplay: Observer {
    
    let observable: WeatherData
    
    init(weatherData: WeatherData) {
        observable = weatherData
        observable.register(self)
    }
    
    func update() {
        let humidity = observable.getHumidity()
        print("Current humidity: \(humidity)%")
    }
    
}

class PressureDisplay: Observer {
    
    let observable: WeatherData
    
    init(weatherData: WeatherData) {
        observable = weatherData
        observable.register(self)
    }
    
    func update() {
        let pressure = observable.getPressure()
        print("Current pressure: \(pressure)")
    }
    
}
