//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Myrddin-Evans, Lysander (JD) on 30/11/2022.
//

import Foundation

class Tamagotchi {
    
    private var hunger: Int
    private var happy: Int
    private var weight: Int
    private var tiredness: Int
    
    init() {
        self.hunger = 5
        self.happy = 0
        self.weight = 1
        self.tiredness = 0
    }
    
    func eatSnack() {
        self.happy += 1
        self.hunger -= 1
        self.weight += 1
        self.tiredness += 1
    }
    
    func getHunger() -> Int {
        return self.hunger
    }
    
    func editHunger(_ value: Int) {
        if self.hunger + value < 0 {
            self.hunger = 0
        } else if self.hunger + value > 10 {
            self.hunger = 10
        } else {
            self.hunger += value
        }
    }
    
    func getHappy() -> Int {
        return self.happy
    }
    
    func editHappy(_ value: Int) {
        if self.happy + value < 0 {
            self.happy = 0
        } else if self.happy + value > 10 {
            self.happy = 10
        } else {
            self.happy += value
        }
    }
    
    func getWeight() -> Int {
        return self.weight
    }
    
    func editWeight(_ value: Int) {
        if self.weight + value < 0 {
            self.weight = 0
        } else if self.weight + value > 10 {
            self.weight = 10
        } else {
            self.weight += value
        }
    }
    
    func getIllness() {
        if self.weight <= 4 {
            self.weight = 1
        } else {
            self.weight -= 4
        }
    }
    
    func getTired() -> Int {
        return self.tiredness
    }
    
    func sleep() {
        self.tiredness = 0
    }
    
}
