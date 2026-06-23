//
//  main.swift
//  8ball
//
//  Created by First account on 22.06.26.
//

import Foundation

var possibilities = ["It is certain", "Reply hazy, try again", "Don’t count on it", "It is decidedly so", "Ask again later", "My reply is no", "Without a doubt", "Better not tell you now", "My sources say no", "Yes definitely", "Cannot predict now", "Outlook not so good", "You may rely on it", "Concentrate and ask again", "Very doubtful", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes"] //normal array
func randomise(text: String) { //better randomiser
    let hash = text.utf8.reduce(0) { $0 + Int($1) } //hashes the string into a number
    let index = abs(hash % possibilities.count) //makes that number a possible nunber for the 8ball
    print(possibilities[index]) //uses that same possible number and sends it right away.
}
let randomIndex = Int.random(in: 0...19)
if CommandLine.arguments.count > 1 {
    randomise(text: CommandLine.arguments.dropFirst().joined(separator: " ")) //parses the Commandline arguments into a string and then hashes it
    
} else {
    print("What is your question towards the 8-Ball?")
    let input = readLine() ?? "."
    if input.count > 1 {
        randomise(text: input) //sames goes for this, but it's easier since an input is already senitized.
    }
        
}


