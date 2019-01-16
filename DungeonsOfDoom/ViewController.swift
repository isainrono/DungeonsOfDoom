//
//  ViewController.swift
//  DungeonsOfDoom
//
//  Created by Isain on 20/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import UIKit

var heroeSelected:Heroe = Heroe()

class ViewController: UIViewController {
    
    // Lista de item por tipo de rol
    var guerreroItemList:[Item] = [Item]()
    var arqueroItemList:[Item] = [Item]()
    var brujoItemList:[Item] = [Item]()
    
    // Items inicilaes para cada rol en el juego
    var guerreroItem:Item = Item(nombre: "helmet", valor: 2, ataque: 10, defensa: 10, magia: 0, suerte: 2, imagen: UIImage(named:"helmet1")!)
    
    
    var arqueroItem:Item = Item(nombre: "arrow", valor: 1, ataque: 8, defensa: 4, magia: 3, suerte: 2, imagen: UIImage(named:"arrow")!)
    
    var brujoItem:Item = Item(nombre: "cap", valor: 5, ataque: 0, defensa: 0, magia: 10, suerte: 6, imagen: UIImage(named:"cap")!)
    
    
    // Lista de stuff por rol
    var guerreroItems:[Stuff] = [Stuff]()
    var arqueroItems:[Stuff] = [Stuff]()
    var brujoItems:[Stuff] = [Stuff]()
    
    
    // Lista de stuff por rol
    var guerreroStuff:Stuff = Stuff(nombre: "guerrero")
    var arqueroStuff:Stuff = Stuff(nombre: "arquero")
    var brujoStuff:Stuff = Stuff(nombre: "brujo")
    
    
    
    // Valores por defecto de todos los personajes por rol
    var listaHeroes:[Heroe] = [
        Heroe(nombre: "Ansgar", vida: 4, dinero: 20, experiencia: 0, imagen: UIImage(named:"heroe1")!),
        Heroe(nombre: "Faelwen", vida: 4, dinero: 20, experiencia: 0, imagen: UIImage(named:"heroe2")!),
        Heroe(nombre: "Lothar", vida: 4, dinero: 70, experiencia: 0, imagen: UIImage(named:"heroe3")!)
    ]
    
    
    // Valores por defecto de cada rol
       // Rol 1
    @IBOutlet weak var def1: UILabel!
    @IBOutlet weak var atq1: UILabel!
    @IBOutlet weak var mag1: UILabel!
    @IBOutlet weak var lck1: UILabel!
    
        // Rol 2
    @IBOutlet weak var def2: UILabel!
    @IBOutlet weak var atq2: UILabel!
    @IBOutlet weak var mag2: UILabel!
    @IBOutlet weak var lck2: UILabel!
    
        // Rol 3
    @IBOutlet weak var atq3: UILabel!
    @IBOutlet weak var def3: UILabel!
    @IBOutlet weak var mag3: UILabel!
    @IBOutlet weak var lck3: UILabel!
    
    
    
    //Botones que seleccionan que jugador inicia partida
    @IBAction func Rol1(_ sender: Any) {
        heroeSelected = listaHeroes[0]
    }
    
    @IBAction func Rol2(_ sender: Any) {
        heroeSelected = listaHeroes[1]
    }

    
    @IBAction func Rol3(_ sender: Any) {
        heroeSelected = listaHeroes[2]
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Agrego items de inicio de juego a la lista de items de cada tipo de jugador
        guerreroItemList.append(guerreroItem)
        arqueroItemList.append(arqueroItem)
        brujoItemList.append(brujoItem)
        
        //Agrego lista de items a los stuff de roles ya creados
        guerreroStuff.setListaItems(listaItems: guerreroItemList)
        arqueroStuff.setListaItems(listaItems: arqueroItemList)
        brujoStuff.setListaItems(listaItems: brujoItemList)
        
        
        
        // Añadir a cada heroe su staff
        listaHeroes[0].setStuff(stuffHero: guerreroStuff)
        listaHeroes[1].setStuff(stuffHero: arqueroStuff)
        listaHeroes[2].setStuff(stuffHero: brujoStuff)
        
        // asignación de valores a cada rol
        atq1.text = String(listaHeroes[0].ataque())
        def1.text = String(listaHeroes[0].defensa())
        mag1.text = String(listaHeroes[0].magia())
        lck1.text = String(listaHeroes[0].suerte())
        
        
        atq2.text = String(listaHeroes[1].ataque())
        def2.text = String(listaHeroes[1].defensa())
        mag2.text = String(listaHeroes[1].magia())
        lck2.text = String(listaHeroes[1].suerte())
    
        
        atq3.text = String(listaHeroes[2].ataque())
        def3.text = String(listaHeroes[2].defensa())
        mag3.text = String(listaHeroes[2].magia())
        lck3.text = String(listaHeroes[2].suerte())
        
        
        
        

    }
    



}

