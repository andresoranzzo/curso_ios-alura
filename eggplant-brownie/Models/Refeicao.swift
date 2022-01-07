//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by evo on 06/12/21.
//

import UIKit

class Refeicao: NSObject {

    // Atributos
    let nome: String
    let felicidade: Int
    var itens: Array<Item> = []

    // Construtor
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }

    func totalDeCalorias() -> Double {
        var total = 0.0

        for item in itens {
            total += item.calorias
        }

        return total
    }

}
