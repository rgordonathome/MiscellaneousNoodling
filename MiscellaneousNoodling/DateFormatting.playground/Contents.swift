//: Playground - noun: a place where people can play

import UIKit

let actualURL = "http://gd2.mlb.com/components/game/mlb/year_2017/month_04/day_28/master_scoreboard.json"

var constructedURL = "http://gd2.mlb.com/components/game/mlb/year_"

let today = Date()

let todayString = today.description

// "Explode" based on a delimiter of " "
let todayStringParts = todayString.components(separatedBy: " ")

// Explode the first element of the array based on "-"
if let todayValues = todayStringParts.first {
    
    // Explode based on the "-" character
    let dayMonthYear = todayValues.components(separatedBy: "-")
    
    // Build the rest of the URL
    constructedURL = constructedURL + dayMonthYear[0] + "/month_" + dayMonthYear[1] + "/day_" + dayMonthYear[2] + "/master_scoreboard.json"
}

// Print the completed URL for today
print(constructedURL)

