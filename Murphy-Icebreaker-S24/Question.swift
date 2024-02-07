//
//  Question.swift
//  Murphy-Icebreaker-S24
//
//  Created by Alex Murphy on 2/6/24.
//

import Foundation

class Question {
    var id: String
    var text: String
    
    // Question mark means handle error if null
    init?(id: String, data: [String: Any]) {
        // Guard variable that will not get declared if data is present
        guard let text = data["text"] as? String
        else {
            return nil
        }
        self.id = id
        self.text = text
    }
}
