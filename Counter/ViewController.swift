//
//  ViewController.swift
//  Counter
//
//  Created by MacBook Pro on 10.12.24..
//

import UIKit

class ViewController: UIViewController {
    private var number: Int = 0
    let date = Date()
    let dateFrom = DateFormatter()
    var historyArray = [String]()
    
        
    @IBOutlet weak var plusOneButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String("Значение счетчика: \(number)")
        historyTextView = historyArray()//вот тут не понимаю как добавить массив в TextView. Можно подсказку пожалуйста
    }
    
    
    @IBAction func buttonDidTap(_ sender: Any) {
        number += 1
        counterLabel.text = String("Значение счетчика: \(number)")
        dateFrom.dateFormat = "dd MM yyyy, HH:mm"
        historyArray.append("\(dateFrom)Значение изменено на +1/n")
    }
    
    @IBAction func buttonMinusOne(_ sender: Any) {
        if number > 0 {
            number -= 1
            historyArray.append("\(dateFrom) Значение изменено на -1/n")
        } else {
            number = 0
            historyArray.append("\(dateFrom) попытка уменьшить значение счётчика ниже 0/n")
        }
        counterLabel.text = String("Значение счетчика: \(number)")
        }
    
    @IBAction func buttonPlusOne(_ sender: Any) {
        number += 1
        counterLabel.text = String("Значение счетчика: \(number)")
        historyArray.append("\(dateFrom) Значение изменено на +1/n")
    }
    @IBAction func buttonZeroTap(_ sender: Any) {
        number = 0
        counterLabel.text = String("Значение счетчика: \(number)")
        historyArray.append("\(dateFrom) Значение сброшено/n")
    }
    
   
}
