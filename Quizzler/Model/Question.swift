//
//  Questions.swift
//  Quizzler
//
//  Created by Mac on 20.04.2021.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
