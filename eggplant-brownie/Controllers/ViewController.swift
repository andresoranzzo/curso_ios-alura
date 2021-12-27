//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by evo on 06/12/21.
//

import UIKit

protocol AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Atributos

    var delegate: RefeicoesTableViewController?
    var itens: [String] = ["Molho de tomate", "Queijo", "Molho apimentado", "Manjericao"]

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)

        let linhaDaTabela = indexPath.row
        let item = itens[linhaDaTabela]

        celula.textLabel?.text = item

        return celula
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }

    // MARK: - IBOutlets

    @IBOutlet weak var nomeTF: UITextField?

    @IBOutlet weak var felicidadeTF: UITextField?

    // MARK: - Actions

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

