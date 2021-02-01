//
//  RestaurantList.swift
//  SMK
//
//  Created by Sathish Damodaran on 12/26/20.
//
import SwiftUI

struct RestaurantsView: View { // if using ContentView then use that here instead of RestaurantView
    let restaurants = Bundle.main.decode([Restaurant].self, from: "Rest.json")

    var body: some View {
        List(restaurants) { restaurant in
           RestaurantRowView(restaurant: restaurant)
            
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView()
    }
}


