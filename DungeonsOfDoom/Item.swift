//
//  Item.swift
//  DungeonsOfDoom
//
//  Created by Isain on 20/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import Foundation
import UIKit

class Item {
    
    private var nombre:String
    private var valor:Int
    private var ataque:Int
    private var defensa:Int
    private var magia:Int
    private var suerte:Int
    private var imagen:UIImage = UIImage()
    
    
    init(nombre:String, valor:Int, ataque:Int, defensa:Int, magia:Int, suerte:Int, imagen:UIImage) {
        self.nombre = nombre
        self.valor = valor
        self.ataque = ataque
        self.defensa = defensa
        self.magia = magia
        self.suerte = suerte
        self.imagen = imagen
    }
    
    func getNombre()-> String {
        return self.nombre
    }
    
    func setNombre(nombre:String) {
        self.nombre = nombre
    }
    
    func getValor()-> Int{
        return self.valor
    }
    
    func setValor(valor:Int) {
        self.valor = valor
    }
    
    func getAtaque()-> Int {
        return self.ataque
    }
    
    func setAtaque(ataque:Int) {
        self.ataque = ataque
    }
    
    func getDefensa()-> Int {
        return self.defensa
    }
    
    func setDefensa(defensa:Int) {
        self.defensa = defensa
    }
    
    func getMagia()-> Int {
        return self.magia
    }
    
    func setMagia(magia:Int) {
        self.magia = magia
    }
    
    func getSuerte()-> Int {
        return self.suerte
    }
    
    func setSuerte(suerte:Int) {
        self.suerte = suerte
    }
    
    func getImagen()-> UIImage{
        return self.imagen
    }
    
    func setImagen(imagen:UIImage) {
        self.imagen = imagen
    }
    
}
