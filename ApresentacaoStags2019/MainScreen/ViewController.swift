//
//  ViewController.swift
//  ApresentacaoStags2019
//
//  Created by Pedro Zaroni on 03/01/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import UIKit

protocol ViewDelegate: class {
    func updateLabel(with value: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    private var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: self)
    }

    @IBAction func didTapPlusOneButton(_ sender: Any) {
        presenter?.incrementCounter(by: 1)
    }

    @IBAction func didTapPlusFiveButton(_ sender: Any) {
        presenter?.incrementCounter(by: 5)
    }

    @IBAction func didTapPlusTenButton(_ sender: Any) {
        presenter?.incrementCounter(by: 10)
    }
}

extension ViewController: ViewDelegate {
    func updateLabel(with value: String) {
        counterLabel.text = value
    }
}


