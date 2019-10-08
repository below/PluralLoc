//
//  RussianTest.swift
//  Plural LocTests
//
//  Created by Alexander v. Below on 08.10.19.
//  Copyright © 2019 Alexander von Below. All rights reserved.
//

import XCTest

class RussianTest: XCTestCase {

    var languageBundle: Bundle!
    override func setUp() {
        let path = Bundle.main.path(forResource: "ru", ofType: "lproj")!
        languageBundle = Bundle(path: path)
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
        
        let format = languageBundle.localizedString(forKey: "bottlesOfBeer", value: nil, table: nil)
        let actual = String(format:format, i)
        XCTAssertEqual(expect, actual)
    }
    
    func testExample() {
        let i = 15
        
        cardinalTest(value: i)
    }
    
    func testAll() {
        for i in 0 ... 99 {
            cardinalTest(value: i)
        }
    }
}
