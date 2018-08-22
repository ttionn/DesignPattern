//
//  main.swift
//  Observer
//
//  Created by TTSY on 2018/8/22.
//  Copyright © 2018 TTSY. All rights reserved.
//

import Foundation

/*  The Observer Pattern defines a one-to-many dependency between objects so that when one object changes state, all of its dependents are notified and updated automatically.
 */

/*  Design Principle:
 *  Strive for loosely coupled designs between objects that interact.
 */

print("The Observer Pattern")

let weatherData = WeatherData()

let temperatureObserve = TemperatureDisplay(weatherData: weatherData)
let humidityObserve = HumidityDisplay(weatherData: weatherData)
let pressureObserve = PressureDisplay(weatherData: weatherData)

weatherData.setChanged(temperature: 65, humidity: 77, pressure: 29.8)
weatherData.setChanged(temperature: 63.5, humidity: 80, pressure: 31.1)
