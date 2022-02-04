//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let main = [
        Story(title: "you see a fork in the road", choice1: "take left", choice2: "take right"),
        Story(title: "you see a tiger ", choice1: "shout for help", choice2: "play dead"),
        Story(title: "you find a treasure chest", choice1: "open it", choice2: "check for traps")
    
    ]
    
    var storyNumber = 0
    
    

    
    mutating func checkAnswer(userAnswer: String){
        
        if userAnswer == main[storyNumber].choice1 {
            storyNumber += 1
            if storyNumber > 2{
                storyNumber = 0
            }
            
        }else{ storyNumber += 2
            if storyNumber > 2{
                storyNumber = 0
            }
            
            
        }
    }
    
    
    
    func getStoryNumber () -> String {
        return main[storyNumber].title
    }
    
    func getChoice1 () -> String {
        return main[storyNumber].choice1
    }
    
    func getChoice2 () -> String {
        return main[storyNumber].choice2
        
    }
}
