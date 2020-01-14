//
//  ViewController.swift
//  calculator
//
//  Created by 二井　孝文 on 2020/01/14.
//  Copyright © 2020 Swift-calculator. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // ビューがロードされた時点で式と答えのラベルは空にする
        formulaLabel.text = ""
        answerLabel.text = ""
    }
    @IBAction func inputFormula(_ sender: UIButton) {
        // ボタン（Cと=以外）が押されたら式を表示する
            guard let formulaText = formulaLabel.text else {
                return
            }
            guard let senderedText = sender.titleLabel?.text else {
                return
            }
            formulaLabel.text = formulaText + senderedText
        }
}

