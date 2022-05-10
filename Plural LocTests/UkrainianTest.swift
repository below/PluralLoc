//
//  UkrainianTest.swift
//  Plural LocTests
//
//  Created by Andrii Zakharchenko on 10.05.2022.
//  Copyright © 2022 Alexander von Below. All rights reserved.
//

import XCTest

class UkrainianTest: BaseLanguageTest {

    override func setUp() {
        setUp(language: "uk")
    }

    func bottlePlural(bottles i: Int) -> String {
        var word: String!
        if i >= 11, i <= 19  {
            word = " пляшок"
        } else {
            switch i % 10 {
                case 1:
                    word = " пляшка"
                case 2, 3, 4:
                    word = " пляшки"
                default:
                    word = " пляшок"
                }
        }
        return word
    }

    func cardinalTest(value i: Int) {
        let word = bottlePlural(bottles: i)
        let expect = "\(i)\(word) пива"
        
        let actual = localizedString(cardinal: i)
        XCTAssertEqual(expect, actual)
    }
    
    func testSimple() {
        let i = 15
        
        cardinalTest(value: i)
    }
    
    func testAll() {
        for i in 0 ... 99 {
            cardinalTest(value: i)
        }
    }
}
