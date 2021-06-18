//
//  Story.swift
//  HackerNews
//
//  Created by Randy Crossley on 6/18/21.
//  This app was built using SwiftUI, Combine and Web API.
//  I learned how to build this app from Mohammad Azam on Udemy, whom used the
//  Combine: Asynchronous Programming with Swift book.
//

import Foundation

struct Story: Codable {
    
    let id: Int
    let title: String
    let url: String
}

extension Story {
    
    static func placeholder() -> Story {
        return Story(id: 0, title: "N/A", url: "")
    }    
}
