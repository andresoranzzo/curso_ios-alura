//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by evo on 06/12/21.
//

import UIKit

protocol ViewControllerDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {

    var delegate: RefeicoesTableViewController?

    @IBOutlet weak var nomeTF: UITextField?

    @IBOutlet weak var felicidadeTF: UITextField?

    @IBAction func adicionar(_ sender: Any) {
        guard let nomeDaRefeicao = nomeTF?.text else {
            print("nome invalido")
            return
        }

        guard let felicidadeDaRefeicao = felicidadeTF?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            print("felicidade invalida")
            return
        }

        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)

        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")

        delegate?.add(refeicao)

        navigationController?.popViewController(animated: true)
    }
}

