//
//  EarthQuakeDataEntry.swift
//  Networking-EarthQuake-API
//
//  Created by Admin on 2/13/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import Foundation

struct Properties: Decodable, Hashable {
    var mag: Double
    var place: String
    var time: Int
    var detail: String
    var title: String
}

struct Geometry: Decodable, Hashable {
    var type: String
    var coordinates: [Double]
}
struct Features: Decodable, Hashable {
    var properties: Properties
    var geometry: Geometry
}
struct EarthQuakeAPIList: Decodable {
    var features: [Features]
}
