//
//  DetailView.swift
//  HackerNews
//
//  Created by Pratap Sharma on 09/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"google.com")
    }
}


