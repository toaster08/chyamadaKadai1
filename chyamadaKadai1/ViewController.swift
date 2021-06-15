//
//  ViewController.swift
//  chyamadaKadai1
//
//  Created by toaster on 2021/06/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var sumButton: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!

    // MARK: 配列操作関数による別解
    // クロージャで関数外のスコープの外のTextFieldを配列に格納
    private var sumArrays: [UITextField] {
        [textField1, textField2, textField3, textField4, textField5]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        sumButton.addTarget(self, action: #selector(tappedSumButton), for: .touchUpInside)
    }
}

@objc extension ViewController {
    func tappedSumButton() {
        let sum = sumArrays
            .map {Int($0.text ?? "") ?? 0}
            .reduce(0, { result, num -> Int in
                let sum = result + num
                return sum
            })
        // .reduce(0) { $0 + $1 }
        // .reduce(0,+)
        resultLabel.text = sum.description
    }
}

// MARK: 自身のフィードバック後
/*
 override func viewDidLoad() {
 super.viewDidLoad()

 let tapGR = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
 view.addGestureRecognizer(tapGR)
 }

 @objc private func dismissKeyboard() {
 view.endEditing(true)
 }

 @IBAction private func calculate(_ sender: UIButton) {
 view.endEditing(true)

 let number1 = Int(textField1.text!) ?? 0
 let number2 = Int(textField2.text!) ?? 0
 let number3 = Int(textField3.text!) ?? 0
 let number4 = Int(textField4.text!) ?? 0
 let number5 = Int(textField5.text!) ?? 0

 resultLabel.text = String(number1 + number2 + number3 + number4 + number5)
 }
 }
 */
