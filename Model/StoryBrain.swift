//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
                title: "You’ve got a phone call. It is from NASA. They say that you were lucky enough to get a ticket to the Moon.",
                choice1: "Oh! That’s great. I gonna go.", choice1Destination: 2,
                choice2: "Sorry, I have a car sickness.", choice2Destination: 1
            ),
            Story(
                title: "Oh, we forgot to mention, - said Nasa. Just right now we have a campaign. The price is 99% off.",
                choice1: "Really? Then I start to pack my luggage.", choice1Destination: 2,
                choice2: "Wait, you said to the Moon?", choice2Destination: 3
            ),
            Story(
                title: "Do you have a spacesuit?",
                choice1: "Yeah, I’ve got it as my birthday present.", choice1Destination: 5,
                choice2: "No, raincoat is not enough?", choice2Destination: 4
            ),
            Story(
                title: "Yeah, the first commercial flight to the Moon.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Sorry without a spacesuit you can’t go. Just right now we have a new model only for 1000$.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Sir, the car is waiting for you in front of the entrance.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            )
        ]
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2{
            storyNumber = currentStory.choice2Destination
        }
    }
}

