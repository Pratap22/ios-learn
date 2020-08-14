//
//  main.swift
//  StructVsClasses
//
//  Created by Pratap Sharma on 14/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import Foundation

//object of classes are passed by reference
var hero = ClassHero(name: "Spider Man", universe: "Marvel")

var anotherHero = hero

anotherHero.name = "Hulk"

var avengers = [hero, anotherHero]

avengers[0].name = "Thor "

print("Hero name: \(anotherHero.name)")

print("anotherHero name: \(anotherHero.name)")



//object of Struct are passed by value

var structHero = StructHero(name: "Pratap", universe: "Human")

var anotherStructHero = structHero
anotherStructHero.name = "Prasar"


print("structHero name: \(structHero.name)")

print("anotherStructHero name: \(anotherStructHero.name)")

let structConstHero = StructHero(name: "Pratap", universe: "Human")
//structConstHero.name = "PTP"
//Cannot assign to property: 'structConstHero' is a 'let' constant


let classConstHero = ClassHero(name: "Prasar", universe: "Human")
classConstHero.name = "PSr"

