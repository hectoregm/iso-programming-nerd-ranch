//
//  ViewController.swift
//  Quiz
//
//  Created by Hector Enrique Gomez Morales on 1/5/16.
//  Copyright © 2016 Hector Enrique Gomez Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var questionLabel: UILabel!
  @IBOutlet var answerLabel: UILabel!

  let questions: [String] = ["From what is cognac made ?",
    "What is 7+7 ?",
    "What is the capital of Vermont ?"]

  let answers: [String] = ["Grapes",
    "14",
    "Montpelier"]
  var currentQuestionIndex: Int = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    questionLabel.text = questions[currentQuestionIndex]
  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)

    questionLabel.alpha = 0
  }

  @IBAction func showNextQuestion(sender: AnyObject) {
    ++currentQuestionIndex
    if currentQuestionIndex == questions.count {
      currentQuestionIndex = 0
    }

    let question: String = questions[currentQuestionIndex]
    questionLabel.text = question
    answerLabel.text = "???"

    animateLabelTransitions()
  }

  @IBAction func showAnswer(sender: AnyObject) {
    let answer: String = answers[currentQuestionIndex]
    answerLabel.text = answer
  }

  func animateLabelTransitions() {
    UIView.animateWithDuration(0.5) {
      self.questionLabel.alpha = 1
    }
  }
}

