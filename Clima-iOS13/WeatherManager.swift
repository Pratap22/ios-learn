//
//  WeatherManager.swift
//  Clima
//
//  Created by Pratap Sharma on 01/08/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager:WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    let weatherUrl = "https://samples.openweathermap.org/data/2.5/find?units=metric&appid=439d4b804bc8187953eb36d2a8c26a02"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherUrl)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(lat: Double, lon: Double){
        let urlString = "\(weatherUrl)&lat=\(lat)&lon=\(lon)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String){
        //1. Create a url
        
        if let url = URL(string: urlString){
            //2. Create URL session
            let session = URLSession(configuration: .default)
            
            //Give session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let weather = self.parseData(safeData){
                        self.delegate?.didUpdateWeather(self, weather: weather);
                    }
                }
            }
            
            //Start the task
            task.resume()
        }
        
    }
    
    func parseData(_ weatherData: Data) -> WeatherModel?{
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let cityName = decodedData.name
            
            return WeatherModel(conditionId: id, cityName: cityName, temperature: temp)
        } catch {
            print(error)
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
    
}
