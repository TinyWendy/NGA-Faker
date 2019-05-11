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
    let topic: String
    let replies: Int

    init(url: URL, topic: String, replies: Int) {
        self.url = url
        self.topic = topic
        self.replies = replies
    }
}
