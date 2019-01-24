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

    func testUpdateValue(){
        presenter.counter = 0
        presenter.updateValue(with: 1)

        XCTAssertEqual(1, presenter.counter)
        XCTAssertEqual("1", mockedViewDelegate.newValue)
    }

    func testResetCounter() {
        presenter.counter = 5
        presenter.resetValue()

        XCTAssertEqual(0, presenter.counter)
        XCTAssertEqual("0", mockedViewDelegate.newValue)
    }

    func testUpdateStepper(){
        presenter.counter = 7
        presenter.resetValue()

        XCTAssertEqual(0, presenter.counter)
        XCTAssertEqual(0.0, mockedViewDelegate.newDouble!, accuracy: 0.000001)

    }
}

private class ViewDelegateMock: ViewDelegate {
    func updateWindow() {
        
    }

    func updateStepper(with value: Double) {
        newDouble = value
    }

    var newDouble: Double?
    var newValue: String?

    func updateLabel(with value: String) {
        newValue = value
    }
}
