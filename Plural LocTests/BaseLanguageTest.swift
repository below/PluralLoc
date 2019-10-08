//
//  BaseLanguageTest.swift
//  Plural LocTests
//
//  Created by Alexander v. Below on 08.10.19.
//  Copyright © 2019 Alexander von Below. All rights reserved.
//

import XCTest

class BaseLanguageTest: XCTestCase {

    var languageBundle: Bundle!

    override func setUp() {
    }

    func setUp(language: String) {
        let path = Bundle.main.path(forResource: language, ofType: "lproj")!
        languageBundle = Bundle(path: path)
    }
    
    func localizedString(cardinal i: Int) -> String {
        let format = languageBundle.localizedString(forKey: "bottlesOfBeer", value: nil, table: nil)
        return String(format:format, i)
    }
}
