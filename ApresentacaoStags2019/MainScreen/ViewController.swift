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
    func updateWindow()
    func updateStepper(with value: Double)
}

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var counterLabel: UILabel!
    private var presenter: Presenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(view: self)
    }

    @IBAction func didResetButton(_ sender: UIButton) {
        presenter?.resetValue()
    }

    @IBAction func didNextButton(_ sender: Any) {
        presenter?.nextWindow()
    }

    @IBAction func didPlusClick(_ sender: UIStepper) {
        presenter?.updateValue(with: sender.value)
    }
}

extension ViewController: ViewDelegate {
    func updateLabel(with value: String) {
        counterLabel.text = value
    }

    func updateStepper(with value: Double){
        stepper.value = value
    }

    func updateWindow() {
        navigationController?.pushViewController(NextViewController(), animated: true)
    }
}
