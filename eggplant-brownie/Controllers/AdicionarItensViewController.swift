//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by evo on 07/01/22.
//

import UIKit

class AdicionarItensViewController: UIViewController {

    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBAction

    @IBAction func adicionarItem(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
