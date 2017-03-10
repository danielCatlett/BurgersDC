import UIKit

var cheese: Bool?
var levelCooked: Int?
var sauces = [String]()
var condiments = [String]()

enum possibleSauces
{
    case ketchup
    case mustard
    case mayo
    case bbq
}

enum possibleCondiments
{
    case relish
    case pickles
    case tomatoes
    case lettuce
    case onions
    case bacon
}

struct burger
{
    func addSauce(sauce: String)
    {
        sauces += [sauce]
    }
    
    func addCondiment(condiment: String)
    {
        condiments += [condiment]
    }
}

var customerBurger = burger()

print("Welcome to Daniel's Burgers! We make the best burgers anywhere!\nLet's get started. On a scale from 1-10, how well done do you want your burger?\nAssume at 1, we are just barely passing safety inspections for how\nlong meat has to be cooked, and at 10, it almost catches on fire when we cook it.\n")
levelCooked = 6

print("Alright! Next order of business is cheese. Will you want some on your burger?\n")
cheese = true

print("Excellent! Let's handle sauces now. We have ketchup, mustard, mayo and barbecue sauce\navailable. Which, if any, do you want?")
var passTheSauce = [possibleSauces.ketchup, possibleSauces.mustard, possibleSauces.mayo]

for index in 0...(passTheSauce.count - 1)
{
    switch passTheSauce[index]
    {
        case possibleSauces.ketchup:
            customerBurger.addSauce(sauce: "Ketchup")
            print("Ketchup added")
            break
        case possibleSauces.mustard:
            customerBurger.addSauce(sauce: "Mustard")
            print("Mustard added")
            break
        case possibleSauces.mayo:
            customerBurger.addSauce(sauce: "Mayo")
            print("Mayo added")
            break
        case possibleSauces.bbq:
            customerBurger.addSauce(sauce: "Barbecue")
            print("Barbecue added")
            break
        default:
            print("Ok, no sauce is cool too. We aren't judging")
    }
}

print("\nAlright, home stretch! Any other condiments you want? We have relish, pickles, tomatoes\nlettuce, onions, and bacon available.")
var passTheCondiments = [possibleCondiments.bacon, possibleCondiments.onions, possibleCondiments.pickles]

for index in 0...(passTheCondiments.count - 1)
{
    switch passTheCondiments[index]
    {
        case possibleCondiments.bacon:
            customerBurger.addCondiment(condiment: "Bacon")
            print("Bacon added")
            break
        case possibleCondiments.onions:
            customerBurger.addCondiment(condiment: "Onions")
            print("Onions added")
            break
        case possibleCondiments.pickles:
            customerBurger.addCondiment(condiment: "Pickles")
            print("Pickles added")
            break
        case possibleCondiments.lettuce:
            customerBurger.addCondiment(condiment: "Lettuce")
            print("Lettuce added")
            break
        case possibleCondiments.tomatoes:
            customerBurger.addCondiment(condiment: "Tomatoes")
            print("Tomatoes added")
            break
        case possibleCondiments.relish:
            customerBurger.addCondiment(condiment: "Relish")
            print("Relish added")
            break
        default:
            print("Your burger is perfect just the way it is, and doesn't need any more\ncondiments to be beautiful")
    }
}

var addCheese = ""
if(!cheese!)
{
    addCheese = "no"
}

print("\nAlright, your burger is coming right up! It will be cooked to a \(levelCooked!) and have \(addCheese)cheese.\nIt will feature the following sauces:")
for index in 0...(sauces.count - 1)
{
    print(sauces[index])
}

print("\nAnd the following other condiments:")
for index in 0...(condiments.count - 1)
{
    print(condiments[index])
}

print("\nWe hope you enjoy!")
