//
//  TamagotchiTest.swift
//  TamagotchiConsoleAppTests
//
//  Created by Myrddin-Evans, Lysander (JD) on 30/11/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    func testWhenICreateATamagotchiItsWeightIsOneAndAgeIsZeroAndHungerIsFiveAndTirednessIsZero() {
        //arrange
        //act
        let tamagotchi = Tamagotchi()
        //assert
        XCTAssertEqual(1, tamagotchi.getWeight())
        XCTAssertEqual(0, tamagotchi.getHappy())
        XCTAssertEqual(5, tamagotchi.getHunger())
        XCTAssertEqual(0, tamagotchi.getTired())
    }
    
    func testEatingASnackDecreasesTamagotchiHungerByOneAndIncreasesHappyAndWeightByOne() {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = tamagotchi.getHunger() - 1
        let expectedHappy = tamagotchi.getHappy() + 1
        let expectedWeight = tamagotchi.getWeight() + 1
        let expectedTiredness = tamagotchi.getTired() + 1
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(expectedHappy, tamagotchi.getHappy())
        XCTAssertEqual(expectedHunger, tamagotchi.getHunger())
        XCTAssertEqual(expectedWeight, tamagotchi.getWeight())
        XCTAssertEqual(expectedTiredness, tamagotchi.getTired())
    }
    
    func testRunningSleepFunctionResetsTirednessToZero() {
        // arrange
        let tamagotchi = Tamagotchi()
        // act
        tamagotchi.eatSnack()
        tamagotchi.sleep()
        // assert
        XCTAssertEqual(0, tamagotchi.getTired())
    }
}
