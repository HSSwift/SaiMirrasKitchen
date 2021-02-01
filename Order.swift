//
//  Order.swift
//  SMK
//
//  Created by Sathish Damodaran on 1/31/21.
//

import SwiftUI

struct Order: View {
    var body: some View {
        VStack{
           Text("Congratulations!")
            .font(.title)
            
            Image(systemName: "flame")
            
            Text("Your order  726xxxxx4860 has been placed!")
            }
        }
    }


struct Order_Previews: PreviewProvider {
    static var previews: some View {
        Order()
    }
}
