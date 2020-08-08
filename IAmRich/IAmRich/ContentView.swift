//
//  ContentView.swift
//  IAmRich
//
//  Created by Pratap Sharma on 07/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal).edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am Rich")
                    .font(.title)
               .fontWeight(.bold)
                    .foregroundColor(.white)
                Image("diamond")
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
