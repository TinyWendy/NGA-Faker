//
//  NGAFaker.swift
//  NGAFaker
//
//  Created by TinyLiu on 2019/5/11.
//  Copyright © 2019 TinyLiu. All rights reserved.
//

import Foundation

struct NGAPost: Codable {
    let url: URL
    let author: String
    let topic: String
    let replies: String
    
    init(url: URL, author: String, topic: String, replies: String) {
        self.url = url
        self.author = author
        self.topic = topic
        self.replies = replies
    }
}
