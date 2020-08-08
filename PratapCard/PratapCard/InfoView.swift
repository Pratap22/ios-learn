//
//  InfoView.swift
//  PratapCard
//
//  Created by Pratap Sharma on 08/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            //                    .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+91-9774374913", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
