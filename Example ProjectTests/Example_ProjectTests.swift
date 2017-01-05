//
//  Example_ProjectTests.swift
//  Example ProjectTests
//
//  Created by iYrke on 1/5/17.
//  Copyright © 2017 iYrke. All rights reserved.
//

import XCTest

@testable import Example_Project

class Example_ProjectTests: XCTestCase {
    func testWelcomeMessage() {
        let sut = ContentProvider(welcomeMessage: "Welcome")
        XCTAssertEqual(sut.welcomeMessage, "EXAMPLE Welcome PROJECT")
    }

    func testWelcomeMessagePrefix() {
        let sut = ContentProvider(welcomeMessage: "Welcome", prefix: "PREFIX")
        XCTAssertEqual(sut.welcomeMessage, "PREFIX Welcome PROJECT")
    }

    func testWelcomeMessagePrefixNonCaps() {
        let sut = ContentProvider(welcomeMessage: "Welcome", prefix: "prefix")
        XCTAssertEqual(sut.welcomeMessage, "prefix Welcome PROJECT")
    }

    func testWelcomeMessageSuffix() {
        let sut = ContentProvider(welcomeMessage: "Welcome", suffix: "HA!")
        XCTAssertEqual(sut.welcomeMessage, "EXAMPLE Welcome HA!")
    }

    func testWelcomeMessageSuffixNonCaps() {
        let sut = ContentProvider(welcomeMessage: "Welcome", suffix: "ha!")
        XCTAssertEqual(sut.welcomeMessage, "EXAMPLE Welcome ha!")
    }

    func testWelcomeMessagePrefixAndSuffix() {
        let sut = ContentProvider(welcomeMessage: "Welcome", prefix: "PREFIX", suffix: "HA")
        XCTAssertEqual(sut.welcomeMessage, "PREFIX Welcome HA!")
    }
}
