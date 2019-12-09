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

    func incrementCounter(by value: Int) {
        counter += value
        view?.updateLabel(with: String(counter))
    }
}
