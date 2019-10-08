//
//  RussianTest.swift
//  Plural LocTests
//
//  Created by Alexander v. Below on 08.10.19.
//  Copyright © 2019 Alexander von Below. All rights reserved.
//

import XCTest

class RussianTest: BaseLanguageTest {

    override func setUp() {
        setUp(language: "ru")
    }

    func bottlePlural(bottles i: Int) -> String {
        var word: String!
        if i <= 19, i >= 11 {
            word = " бутылок"
        } else {
            if i % 10 == 1 {
                word = " бутылка"
            } else {switch i % 10 {
            case 2, 3, 4:
                word = " бутылки"
            default:
                word = " бутылок"
                }
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
