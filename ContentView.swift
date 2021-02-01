//
//  ContentView.swift
//  SMK
//
//  Created by Sathish Damodaran on 12/26/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "flame")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
                
                NavigationLink(
                    destination: menu(),
                    label: {
                        Text("Proceed")
                            .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(.subheadline)
                            
                    })
            }
            .navigationTitle("Welcome to Sai Mirras!")
        }
    }
}


struct menu: View {
    let menu = Bundle.main.decode([Restaurant].self, from: "Rest.json")
    
    var body: some View {
        NavigationView{
        
            List(menu) { restaurant in
           RestaurantRowView(restaurant: restaurant)
                
            NavigationLink(
                destination: order(),
                label: {
                    Text("Order")
                })
        
    }
        .navigationTitle("Menu")
}
    }

    struct order: View {
        var body: some View {
            NavigationView{
            VStack{
               Text("Congratulations!")
                .font(.title)
                
                Image(systemName: "flame")
                
                Text("Your order  726xxxxx4860 has been placed!")
                }
            .navigationTitle("Ordered")
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
