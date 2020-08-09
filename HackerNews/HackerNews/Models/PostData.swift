//
//  PostData.swift
//  HackerNews
//
//  Created by Pratap Sharma on 08/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
