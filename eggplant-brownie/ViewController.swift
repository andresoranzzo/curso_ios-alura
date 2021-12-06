//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by evo on 06/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTF: UITextField!

    @IBOutlet weak var felicidadeTF: UITextField!
    @IBAction func adicionar(_ sender: Any) {
        let nome = nomeTF.text
        let felicidade = felicidadeTF.text
        print("comi \(nome) e fiquei com felicidade: \(felicidade)")
    }
}

