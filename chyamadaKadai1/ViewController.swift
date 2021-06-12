//
//  ViewController.swift
//  chyamadaKadai1
//
//  Created by toaster on 2021/06/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var field1: UITextField!
    @IBOutlet weak private var field2: UITextField!
    @IBOutlet weak private var field3: UITextField!
    @IBOutlet weak private var field4: UITextField!
    @IBOutlet weak private var field5: UITextField!
    @IBOutlet weak private var result: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: 以下.endEditingまではネット上で調べて実装
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
    }

    @objc private func dismissKeyboard() {
        self.view.endEditing(true)
    }

    @IBAction private func calculate(_ sender: UIButton) {
        let number1 = Int(field1.text!) ?? 0
        let number2 = Int(field2.text!) ?? 0
        let number3 = Int(field3.text!) ?? 0
        let number4 = Int(field4.text!) ?? 0
        let number5 = Int(field5.text!) ?? 0

        result.text = String(number1 + number2 + number3 + number4 + number5)
    }
}
