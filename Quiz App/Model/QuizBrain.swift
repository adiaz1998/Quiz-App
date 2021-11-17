//
//  QuizBrain.swift
//  Quiz App
//
//  Created by Alan Díaz on 11/10/21.
//

import Foundation

struct QuizBrain{

    var questionBank = [
        
        Question(text: "5 + 2 = 9", answer: "False"),
        Question(text: "9 - 2 = 8", answer: "False"),
        Question(text: "2 + 3 = 5", answer: "True"),
        Question(text: "1 - 1 = -1", answer: "False")
    ]


    var questionNumber = 0

    
    //Create a function for generating next function
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
    }
    
    func checkAnswer(_ userinput : String) -> Bool {
        
        if userinput == questionBank[questionNumber].answer {
            return true
        } else{
            return false
        }
        
    }
    
    mutating func nextQuestion(){
       
        if questionNumber + 1 < questionBank.count {
            
            questionNumber += 1
        
        }
        
        else{
            
            questionNumber = 0
        }
    }
}
