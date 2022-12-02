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
        XCTAssertEqual(1, tamagotchi.getWeight())
        XCTAssertEqual(0, tamagotchi.getHappy())
        XCTAssertEqual(5, tamagotchi.getHunger())
    }
    
    func testEatingASnackDecreasesTamagotchiHungerByOneAndIncreasesHappyAndWeightByOne() {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = tamagotchi.getHunger() - 1
        let expectedHappy = tamagotchi.getHappy() + 1
        let expectedWeight = tamagotchi.getWeight() + 1
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(expectedHappy, tamagotchi.getHappy())
        XCTAssertEqual(expectedHunger, tamagotchi.getHunger())
        XCTAssertEqual(expectedWeight, tamagotchi.getWeight())
    }
    
}
