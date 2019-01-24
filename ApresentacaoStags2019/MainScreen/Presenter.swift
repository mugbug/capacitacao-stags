//
//  Presenter.swift
//  ApresentacaoStags2019
//
//  Created by Pedro Zaroni on 03/01/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import Foundation

class Presenter {

    var counter: Int = 0
    weak var view: ViewDelegate?

    init(view: ViewDelegate) {
        self.view = view
    }

    func resetValue(){
        counter = 0
        view?.updateLabel(with: String(counter))
        view?.updateStepper(with: Double(counter))
    }

    func updateValue(with value: Double) {
        counter = Int(value)
        view?.updateLabel(with: String(counter))
    }

    func nextWindow(){
        view?.updateWindow()
    }
}
