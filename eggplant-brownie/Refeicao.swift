//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by evo on 06/12/21.
//

import UIKit

class Refeicao: NSObject {

    // Atributos
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []

    // Construtor
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }

    func totalDeCalorias() -> Double {
        var total = 0.0

        for item in itens {
            total += item.calorias
        }

        return total
    }

}
