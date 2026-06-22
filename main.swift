//
//  main.swift
//  8ball
//
//  Created by First account on 22.06.26.
//

import Foundation

var possibilities = ["It is certain", "Reply hazy, try again", "Don’t count on it", "It is decidedly so", "Ask again later", "My reply is no", "Without a doubt", "Better not tell you now", "My sources say no", "Yes definitely", "Cannot predict now", "Outlook not so good", "You may rely on it", "Concentrate and ask again", "Very doubtful", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes"] //defo did NOT use a random ass website to list all the possibilities. let's test it out!
/*
 Reply hazy, try again    Don’t count on it
 It is decidedly so    Ask again later    My reply is no
 Without a doubt    Better not tell you now    My sources say no
 Yes definitely    Cannot predict now    Outlook not so good
 You may rely on it    Concentrate and ask again    Very doubtful
 As I see it, yes
 Most likely
 Outlook good
 Yes
 Signs point to yes
 */
// 0...1 means a closed range (inclusive of both 0 and 1)
let randomIndex = Int.random(in: 0...19)

print(possibilities[randomIndex])
