//
//  ViewController.swift
//  GuessTheWordSkeleton
//
//  Created by Will Oakley on 11/2/18.
//  Copyright © 2018 Will Oakley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //TODO: Connect views from storyboard
    
    /* Arrays of the words and hints used in the game. Randomly chosen by setWord() */
    
    let words: [String] = [] //TODO: Add custom words/hints as strings
    let hints: [String] = []
    
    /* Arrays that will keep track of all words the user successfully guessed. Will be used in HistoryTableView */
    var successfullyGuessed: [String] = []
    var successfullyGuessedCounts: [Int] = []
    
    /* Variables that keep track of the current state of the game during a given round */
    var currentWord: String!
    var currentWordIndex: Int!
    var numGuesses: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setWord()
    }
    
    /* Function setWord() resets a round to an inital state by selecting random word and resetting guesses/labels */
    func setWord() {
        //TODO: Implement setWord logic (reset numGuesses, select random index, set current word, set label)
    }
    
    /* Function that is called when word in text field is successfully matched with currentWord.
     Adds word to successfullyGuessed and shows alert to user that they won round with option to view history. */
    func guessedCorrect() {
        //TODO: Implement guessedCorrect logic (append word and num guesses to guessed arrays, fill in alert logic - make sure set word is called upon dismissal)
    }
    
    /* Function that is called when the user guesses incorrectly. Shows alert. */
    func guessedWrong() {
        //TODO: Implement guessedWrong logic (init/present wrong alert)
    }
    
    /* Function called when guess button is tapped. Compares text field text with currentWord and increases numGuesses by 1. */
    @IBAction func tappedGuess(_ sender: Any) {
        //TODO: Implement tappedGuess logic (add 1 to numGuesses, compare word in textField to currentWord and call guessedWrong or guessedCorrect)
    }
    
    /* Function called when hint button is tapped. Shows an alert with hint from hints that corresponds to random word index. */
    @IBAction func tappedHint(_ sender: Any) {
        //TODO: Implement tappedHint logic (init/present alert showing hint from array hints)
    }
    
    /* Function called when history button is tapped. Segues to HistoryTableViewController. */
    @IBAction func tappedHistory(_ sender: Any) {
        //TODO: Segue to history view
    }
    
    /* Function that passes history arrays to HistoryTableViewController. */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //TODO: Prepare for segue to history view (cast destination to nav controller, get first view contriller of navController, set properties to history arrays)
    }
}


