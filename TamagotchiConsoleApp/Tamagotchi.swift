//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Myrddin-Evans, Lysander (JD) on 30/11/2022.
//

import Foundation

class Tamagotchi {
    
    var hunger: Int
    var happy: Int
    var weight: Int
    
    init() {
        self.hunger = 5
        self.happy = 0
        self.weight = 0
    }
    
    func eatSnack() {
        self.happy += 1
        self.hunger -= 1
    }
}
