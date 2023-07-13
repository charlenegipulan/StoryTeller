//
//  ViewController.swift
//  StoryTeller
//
//  Created by Charlene Gipulan on 7/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
        
    var storyBrain = StoryBrain()


    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.checkAnswer(userAnswer)
        updateUI()
    }
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getQuestionText()
        choice1Button.setTitle("\(storyBrain.getChoice1Text())", for: .normal)
        choice2Button.setTitle("\(storyBrain.getChoice2Text())", for: .normal)
        
    }


}

