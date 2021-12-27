//
//  TableViewController.swift
//  Doublle Collection
//
//  Created by evo on 27/12/21.
//

import UIKit

class TableViewController: UITableViewController {

    var list = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...9 {
            let model = Product()
            model.name = "Product Header \(i + 1)"

            for j in 0...5 {
                let sub_model = Product()
                sub_model.name = "Product Header \(j + 1)"

                model.sub_product.append(sub_model)
            }

            list.append(model)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return list.count
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "header")
        cell?.textLabel?.text = list[section].name
        cell?.textLabel?.textColor = .white
        cell?.textLabel?.font = UIFont(name: "Verdana", size: 25)
        return cell!
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.configure(items: list[indexPath.section].sub_product)

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        80
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}

class Product {
    var name : String?
    var sub_product : [Product] = [Product]()
}
