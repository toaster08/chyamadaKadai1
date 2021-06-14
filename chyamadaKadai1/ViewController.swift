//
//  ViewController.swift
//  chyamadaKadai1
//
//  Created by toaster on 2021/06/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var textField3: UITextField!
    @IBOutlet weak private var textField4: UITextField!
    @IBOutlet weak private var textField5: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

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
