//
//  CurrentWeatherData.swift
//  Weather
//
//  Created by Pavel Ryabov on 03.03.2021.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}




struct Weather: Codable {
    let id: Int
}
