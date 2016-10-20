//
//  TableViewController.swift
//  Minicurso
//
//  Created by ifsp on 19/10/16.
//  Copyright © 2016 com.ifsp. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, AddPersonDelegate {

    var pessoas = [Pessoa(nome: "José", idade: 45)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pessoas.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! PessoaTableViewCell

        let pessoa = pessoas[indexPath.row]
        
        cell.nomeLabel.text = pessoa.nome
        cell.idadeLabel.text = String(pessoa.idade)

        return cell
    }
    
    func add(pessoa: Pessoa){
        
        pessoas.append(pessoa)
        tableView.reloadData()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "addContact" {
            let view = segue.destinationViewController as! ViewController
            view.delegate = self
        }
    
    }

}
