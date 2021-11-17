//
//  ViewController.swift
//  Quiz App
//
//  Created by Alan Díaz on 11/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlers -> Variable | // Actions -> Functions
    
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    var quizbrain = QuizBrain()
    //Creating an object to integrate Model and View Controller
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI() // Calling a function
        
    }
    
    @objc func updateUI(){
        
        questions.text = quizbrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
    
    // 1. Check if the user input is actually the correct answer
        
    // 2. Change the question number
        
    // SENDER
    
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
        if checkAnswer {
            
            sender.backgroundColor = UIColor.green
            
        }
        
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
    }

}

//1, Color reset
//2, Index out of range
