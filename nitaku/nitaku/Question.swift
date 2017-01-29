//
//  Question.swift
//  nitaku
//
//  Created by 喜楽智規 on 2017/01/29.
//  Copyright © 2017年 ios07. All rights reserved.
//

import UIKit

class Question: NSObject {
    var id: String
    var text: String
    var imagePath: String
    var answer1: String
    var answer2: String
    
    override init(){
        self.id = ""
        self.text = ""
        self.imagePath = ""
        self.answer1 = ""
        self.answer2 = ""
    }
    
    func getQuestion(id: String) -> Question {
        switch id {
        case "00000001":
            self.id = "00000001"
            self.text = "この人好き？"
            self.imagePath = ""
            self.answer1 = "嫌い"
            self.answer2 = "好き"
        case "00000002":
            self.id = "00000002"
            self.text = "好きな夜食は"
            self.imagePath = ""
            self.answer1 = "牛丼"
            self.answer2 = "ラーメン"
        default:
            self.id = "00000001"
            self.text = "この人好き？"
            self.imagePath = ""
            self.answer1 = "嫌い"
            self.answer2 = "好き"
        }
        return self
    }
}
