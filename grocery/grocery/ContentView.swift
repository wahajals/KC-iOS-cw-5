//
//  ContentView.swift
//  grocery
//
//  Created by WSS on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var groceryItems = ["Kinder Cards", "Tomato", "Flour","Toast","Cheese","Juice","Doritos"]
    @State var newItem = ""
    
    var body: some View {
        ZStack {
            
            Image("Grocery")
                .resizable()
                .ignoresSafeArea()
                .blur(radius:8)
            Color.black
                .ignoresSafeArea()
                .opacity(0.2)
            VStack {
                
                List (groceryItems, id: \.self){
                    item in
                    HStack {
                        Image(item)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                        Text(item)
                            .font(.title2)
                            .bold()
                    }
                }.opacity(0.7)
                
                
                HStack {
                    Button {
                        groceryItems.append(newItem)
                    } label: {
                        Image(systemName:"plus")
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(10)
                    }
                    TextField("New Items", text: $newItem)
                    Button {
                        groceryItems.remove(at:0)
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(10)
                        
                    }
                }
                
                
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


