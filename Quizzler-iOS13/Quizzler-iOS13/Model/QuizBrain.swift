//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Pratap Sharma on 28/07/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quizQuestions = [
        Question(text: "Cyclones spin in a clockwise direction in the southern hemisphere", answer: "True"),
        Question(text: "Cyclones spin in a clockwise direction in the southern hemisphere", answer: "True"),
        Question(text: "Goldfish only have a memory of three seconds", answer:"False"),
        Question(text: "The capital of Libya is Benghazi", answer:"False"),
        Question(text: "Dolly Parton is the godmother of Miley Cyrus", answer:"True"),
        Question(text: "Roger Federer has won the most Wimbledon titles of any player", answer:"False"),
        Question(text: "An octopus has five hearts",answer: "False"),
        Question(text: "Brazil is the only country in the Americas to have the official language of Portuguese", answer:"True"),
        Question(text: "Stephen Hawking declined a knighthood from the Queen", answer:"True"),
        Question(text: "Japan and Russia did not sign a peace treaty after World War Two so are technically still at war", answer:"True"),
        Question(text: "The Great Wall of China is visible from space", answer:"False"),
    ]
    
    var questionNumber = 1;
    var score = 0;
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        let isCorrect = userAnswer == quizQuestions[questionNumber].answer
        if isCorrect {
            score += 1
        }
        return isCorrect
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quizQuestions.capacity{
            questionNumber += 1
           
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String {
        return quizQuestions[questionNumber].text
    }
    
    func getCurrentProgress() -> Float {
        return Float(questionNumber + 1) / Float(quizQuestions.count);
    }
    
    func getScore() -> Int {
        return score 
    }
}
