//
//  ViewController.swift
//  Counter
//
//  Created by MacBook Pro on 10.12.24..
//

import UIKit
import Foundation

import UIKit
import Foundation

class ViewController: UIViewController {
    private var number: Int = 0
    private var firstStringHistory = "История изменений:" {
        didSet {
            let oldText = historyTextView!
            historyTextView.text = oldText.text + "\n" + firstStringHistory
        }
    }
       
    @IBOutlet weak private var plusOneButton: UIButton!
    @IBOutlet weak private var historyTextView: UITextView!
    @IBOutlet weak private var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String("Значение счетчика: \(number)")
        
       }
   
    
    @IBAction private func buttonDidTap(_ sender: Any) {
        number += 1
        counterLabel.text = String("Значение счетчика: \(number)")
        firstStringHistory = "Значение изменено на +1"
    }
    
    @IBAction private func buttonMinusOne(_ sender: Any) {
        if number > 0 {
            number -= 1
            firstStringHistory = "Значение изменено на -1"
        } else {
            number = 0
            firstStringHistory = "Попытка уменьшить значение счётчика ниже 0"
        }
        counterLabel.text = String("Значение счетчика: \(number)")
        }
    
    @IBAction private func buttonPlusOne(_ sender: Any) {
        number += 1
        counterLabel.text = String("Значение счетчика: \(number)")
        firstStringHistory = "Значение изменено на +1"
    }
    @IBAction private func buttonZeroTap(_ sender: Any) {
        number = 0
        counterLabel.text = String("Значение счетчика: \(number)")
        firstStringHistory = "Значение сброшено"
    }
   
}


