//
//  NetworkingManager.swift
//  Networking-EarthQuake-API
//
//  Created by Admin on 2/13/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

class NetworkingManager: ObservableObject {
    //published data all the changing in DataPhotoListEntry (View only changing when data coming)
    @Published var earthQuakeList = EarthQuakeAPIList(features: [])
    
    init() {
        guard let url = URL(string: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson") else {return}
        URLSession.shared.dataTask(with: url){
            (data, _, _) in
            guard let data = data else {return}
            let earthQuakeList = try!
                JSONDecoder().decode(EarthQuakeAPIList.self, from: data)
            print("-----")
            
            print("-----")
            
            
            //arrow to execute of Task (Main thread or background thread)
            DispatchQueue.main.async {
                self.earthQuakeList = earthQuakeList
                print("data")
                //print(earthQuakeList.features)
            }
        }.resume()
    }
}
