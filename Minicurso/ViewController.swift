//
//  ViewController.swift
//  Minicurso
//
//  Created by ifsp on 19/10/16.
//  Copyright © 2016 com.ifsp. All rights reserved.
//

import UIKit

protocol AddPersonDelegate {
    func add(pessoa: Pessoa)
}

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    var delegate: AddPersonDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func add(sender: AnyObject) {
        
        let nome = nameTextField.text!
        let idade = Int(ageTextField.text!)
        
        if nameTextField == nil || ageTextField == nil {
            return
        }
        
        let pessoa = Pessoa(nome: nome, idade: idade!)
        
        delegate!.add(pessoa)
        
        if let navigation = self.navigationController{
            
            navigation.popViewControllerAnimated(true)
        
        }
        
    }

}

