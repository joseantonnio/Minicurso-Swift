//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Teste {
    var nome: String
    var idade: Int
    
    init (nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
    
}

let teste = Teste(nome: "José", idade: 21)

print("Nome: \(teste.nome) Idade: \(teste.idade)")
