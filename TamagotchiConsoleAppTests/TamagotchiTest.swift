//
//  TamagotchiTest.swift
//  TamagotchiConsoleAppTests
//
//  Created by Myrddin-Evans, Lysander (JD) on 30/11/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    func testWhenICreateATamagotchiItsWeightAndAgeAreInitialisedToZeroAndHungerToFive() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertEqual(0, tamagotchi.weight)
        XCTAssertEqual(0, tamagotchi.happy)
        XCTAssertEqual(5, tamagotchi.hunger)
    }
    
    func testEatingASnackDecreasesTamagotchiHungerByOneAndIncreasesHappyAndWeightByOne() {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = tamagotchi.hunger - 1
        let expectedHappy = tamagotchi.happy + 1
        let expectedWeight = tamagotchi.weight + 1
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(expectedHappy, tamagotchi.happy)
        XCTAssertEqual(expectedHunger, tamagotchi.hunger)
        XCTAssertEqual(expectedWeight, tamagotchi.weight)
    }
    
}
