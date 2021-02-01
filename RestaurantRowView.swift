//
//  RestaurantRowView.swift
//  SMK
//
//  Created by Sathish Damodaran on 12/26/20.
//

import SwiftUI

struct RestaurantRowView: View {
    let restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Image(restaurant.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(){
            Text(restaurant.name)
                .font(.title2)
                .fontWeight(.light)
            
            Text(restaurant.description)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .frame(height:40)
            
            }
        }
}

}
struct RestaurantRowView_Previews: PreviewProvider {
    static let restaurants = Bundle.main.decode([Restaurant].self, from: "Rest.json")

    static var previews: some View {
        RestaurantRowView(restaurant: restaurants[0])
            .previewLayout(.sizeThatFits)
        }
    }
