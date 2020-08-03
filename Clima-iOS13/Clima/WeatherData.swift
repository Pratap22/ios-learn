//
//  WeatherData.swift
//  Clima
//
//  Created by Pratap Sharma on 03/08/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

//codabe here is type alias
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    
}

struct Weather: Codable {
    let description: String
    let id: Int
}
