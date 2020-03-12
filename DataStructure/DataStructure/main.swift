//
//  main.swift
//  DataStructure
//
//  Created by Keunna Lee on 2020/01/29.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import Foundation

print("Hello, World!")

var stackList = [1,3,2,4]

Stack1().recursive(4)
Stack1().popStack()
//Stack().push(stackList)
struct Planet {
  var name: String
  var distanceFromSun: Double
}
let planets = [
  Planet(name: "Mercury", distanceFromSun: 0.387),
  Planet(name: "Venus", distanceFromSun: 0.722),
  Planet(name: "Earth", distanceFromSun: 1.0),
  Planet(name: "Mars", distanceFromSun: 1.52),
  Planet(name: "Jupiter", distanceFromSun: 5.20),
  Planet(name: "Saturn", distanceFromSun: 9.58),
  Planet(name: "Uranus", distanceFromSun: 19.2),
  Planet(name: "Neptune", distanceFromSun: 30.1)
]
let result2 = planets.reduce(0) { (value1,value2)-> Double in return value1 + value2.distanceFromSun }
