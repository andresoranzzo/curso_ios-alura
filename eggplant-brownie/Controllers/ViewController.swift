//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by evo on 06/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTF: UITextField?

    @IBOutlet weak var felicidadeTF: UITextField?

    @IBAction func adicionar(_ sender: Any) {
        /*
        // Verificação 1
        if let nomeDaRefeicao = nomeTF?.text, let felicidadeDaRefeicao = felicidadeTF?.text {
            let nome = nomeDaRefeicao

            if let felicidade = Int(felicidadeDaRefeicao) {
                let refeicao = Refeicao(nome: nome,
                                        felicidade: felicidade)
                print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
            } else {
                print("erro ao tentar criar a refeição")
            }
        } */

        // Verificação 2
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
    }
}

