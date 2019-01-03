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

    @IBAction func didTapButton(_ sender: Any) {
        presenter?.incrementCounter()
    }
}

extension ViewController: ViewDelegate {
    func updateLabel(with value: String) {
        counterLabel.text = value
    }
}
