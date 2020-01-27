//
//  PresenterTests.swift
//  ApresentacaoStags2019Tests
//
//  Created by Pedro Zaroni on 03/01/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import XCTest

@testable import ApresentacaoStags2019

class PresenterTests: XCTestCase {

    var presenter: Presenter!
    fileprivate var mockedViewDelegate: ViewDelegateMock!

    override func setUp() {
        super.setUp()
        mockedViewDelegate = ViewDelegateMock()
        presenter = Presenter(view: mockedViewDelegate)
    }

    override func tearDown() {
        presenter = nil
        mockedViewDelegate = nil
        super.tearDown()
    }

    func testIncrementCount_byOne() {
        presenter.counter = 0
        presenter.incrementCounter(by: 1)

        XCTAssertEqual("1", mockedViewDelegate.newValue)
    }
}

private class ViewDelegateMock: ViewDelegate {

    var newValue: String?

    func updateLabel(with value: String) {
        newValue = value
    }
}
