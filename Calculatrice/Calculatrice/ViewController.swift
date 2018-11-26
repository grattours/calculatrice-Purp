//
//  ViewController.swift
//  Calculatrice
//
//  Created by Luc Derosne on 24/11/2018.
//  Copyright © 2018 Luc Derosne. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var _shouldResetCurrentNumber = true
    var _previousResult: Double = 0
    var _lastTypedNumber : Double = 0
    var _operationType : Character = " "
    var _currentNumber: Double = 0 {
        didSet {
            ui_currentNumberLabel.text = "\(_currentNumber)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var ui_currentNumberLabel: UILabel!

    func perfomWaitingCalculous() {
        let result: Double
        if _operationType == "+" {
            result = _previousResult + _lastTypedNumber
        } else if _operationType == "-" {
            result = _previousResult - _lastTypedNumber
        } else if _operationType == "*" {
            result = _previousResult * _lastTypedNumber
        } else if _operationType == "/" {
            result = _previousResult / _lastTypedNumber
        } else {
            result = _lastTypedNumber
        }
        _previousResult = result
        _shouldResetCurrentNumber = true
        _currentNumber = result
    }

    @IBAction func digitButtonTouched(_ sender: UIButton) {
        if _shouldResetCurrentNumber == true {
            _currentNumber = 0
            _shouldResetCurrentNumber = false
        }
        _currentNumber = (_currentNumber * 10) + Double(sender.tag)
        _lastTypedNumber = _currentNumber
    }

    @IBAction func divide() {
        if _shouldResetCurrentNumber == false {
            perfomWaitingCalculous()
        }
        _operationType = "/"
    }

    @IBAction func multiply() {
        if _shouldResetCurrentNumber == false {
            perfomWaitingCalculous()
        }
        _operationType = "*"
    }

    @IBAction func add() {
        if _shouldResetCurrentNumber == false {
            perfomWaitingCalculous()
        }
        _operationType = "+"
    }

    @IBAction func substrat() {
        if _shouldResetCurrentNumber == false {
            perfomWaitingCalculous()
        }
        _operationType = "-"
    }

    @IBAction func displayResult() {
        perfomWaitingCalculous()
    }

    @IBAction func resetValue() {
        _previousResult = 0
        _currentNumber = 0
        _operationType = " "
        _lastTypedNumber = 0
    }

    @IBAction func changeSign(_ sender: Any) {
        _currentNumber = _currentNumber * -1
        _previousResult = _currentNumber
        _shouldResetCurrentNumber = true
    }

    @IBAction func applyPercent(_ sender: Any) {
        _currentNumber = _currentNumber / 100

    }
}

