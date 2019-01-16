//
//  Stuff.swift
//  DungeonsOfDoom
//
//  Created by Isain on 21/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import Foundation
import UIKit

class Stuff {
    private var nombre:String
    private var listaItems = [Item]()
    
    init(nombre:String) {
        self.nombre = nombre
    }
    
    init(nombre:String, listaItems:[Item]) {
        self.nombre = nombre
        self.listaItems = listaItems
    }
    
    func getNombre()-> String {
        return self.nombre
    }
    
    func setNombre(nombre:String){
        self.nombre = nombre
    }
    
    
    func getlistaItems()-> [Item] {
        return self.listaItems
    }
    
    func setListaItems(listaItems:[Item]){
        self.listaItems = listaItems
    }
    
    // Funcion que agrega un item a una lista ya existente del Staff
    func addItem(item:Item) {
        self.listaItems.append(item)
    }
    
    // Funcion que elimina un item de la lista del Staff
    func removeItem(item:Item) {
        for n in 0...listaItems.count - 1{
            if(listaItems[n].getNombre() == item.getNombre()) {
                listaItems.remove(at: n)
            }
        }
    }
    
}
