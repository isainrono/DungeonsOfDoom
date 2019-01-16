//
//  Monstruo.swift
//  DungeonsOfDoom
//
//  Created by Isain on 21/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import Foundation
import UIKit

class Monstruo {
    
    private var nombre:String
    private var ataque:Int
    private var vida:Int
    private var dinero:Int
    private var experiencia:Int
    private var imagen:UIImage = UIImage()
    
    init(){
    self.nombre = ""
    self.ataque = 0
    self.vida = 0
    self.dinero = 0
    self.experiencia = 0
    }
    
    init(nombre:String, ataque:Int, vida:Int, dinero:Int, experiencia:Int, imagen:UIImage) {
        self.nombre = nombre
        self.ataque = ataque
        self.vida = vida
        self.dinero = dinero
        self.experiencia = experiencia
        self.imagen = imagen
    }
    
    func getNombre() -> String{
        return self.nombre
    }
    
    func setNombre(nombre:String) {
        self.nombre = nombre
    }
    
    func getAtaque() -> Int {
        return self.ataque
    }
    
    func setAtaque(ataque:Int) {
        self.ataque = ataque
    }
    
    func getVida() -> Int {
        return self.vida
    }
    
    func setVida(vida:Int) {
        self.vida = vida
    }
    
    func getDinero() -> Int {
        return self.dinero
    }
    
    func setDinero(dinero:Int) {
        self.dinero = dinero
    }
    
    func getExperiencia() -> Int {
        return self.experiencia
    }
    
    func setExperiencia(experiencia:Int) {
        self.experiencia = experiencia
    }
    
    func getImagen()-> UIImage{
        return self.imagen
    }
    
    func setImagen(imagen:UIImage) {
        self.imagen = imagen
    }
}
