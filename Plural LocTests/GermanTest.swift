//
//  GermanTest.swift
//  Plural LocTests
//
//  Created by Alexander v. Below on 08.10.19.
//  Copyright © 2019 Alexander von Below. All rights reserved.
//

import XCTest

class GermanTest: BaseLanguageTest {

    override func setUp() {
        setUp(language: "de")
    }
    
    func testZero() {
        let expect = "0 Flaschen Bier"
        let actual = localizedString(cardinal: 0)
        XCTAssertEqual(expect, actual)
    }
    
    func testOne() {
        let expect = "1 Flasche Bier"
        let actual = localizedString(cardinal: 1)
        XCTAssertEqual(expect, actual)
    }
    
    func testPlural() {
        let expect = "99 Flaschen Bier"
        let actual = localizedString(cardinal: 99)
        XCTAssertEqual(expect, actual)
    }
}
