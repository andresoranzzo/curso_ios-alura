//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by evo on 07/12/21.
//

import UIKit

class RefeicoesTableViewController: UITableViewController, ViewControllerDelegate {

    var refeicoes = [Refeicao(nome: "Arroz", felicidade: 4),
                     Refeicao(nome: "Feijao", felicidade: 5),
                     Refeicao(nome: "Salada", felicidade: 4),
                     Refeicao(nome: "Morango", felicidade: 4)]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)

        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome

        return celula
    }

    func add(_ refeicao: Refeicao) {
        refeicoes.append(refeicao)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "adicionar" {
            if let viewController = segue.destination as? ViewController {
                viewController.delegate = self
            }
        }
    }

    func prepara(para segue: UIStoryboardSegue) {

    }
}
