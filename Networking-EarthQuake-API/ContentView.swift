//
//  ContentView.swift
//  Networking-EarthQuake-API
//
//  Created by Admin on 2/13/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkingManager()
    var body: some View {
        
        List(networkingManager.earthQuakeList.features, id: \.properties){ photo in
            Text(photo.properties.place)
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
