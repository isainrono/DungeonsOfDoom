//
//  Heroe.swift
//  DungeonsOfDoom
//
//  Created by Isain on 20/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import Foundation
import UIKit

class Heroe {
    private var nombre:String
    private var vida:Int
    private var dinero:Int
    private var experiencia:Int
    private var imagen:UIImage = UIImage()
    private var stuff = Stuff(nombre: "stuff")
    
    init(){
        self.nombre = ""
        self.vida = 0
        self.dinero = 0
        self.experiencia = 0
    }
    
    
    init(nombre:String, vida:Int, dinero:Int, experiencia:Int, imagen:UIImage) {
        self.nombre = nombre
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
    
    func getImagen() -> UIImage {
        return self.imagen
    }
    
    func setExperiencia(imagen:UIImage){
        self.imagen = imagen
    }
    
    func getStuff() -> Stuff {
        return self.stuff
    }
    
    func setStuff(stuffHero:Stuff){
        self.stuff = stuffHero
    }
    
    //Funcion que calcula el ataque de este heroe
    func ataque() -> Int {
        var totalAtaq = 0
        
        for t in self.stuff.getlistaItems(){
                totalAtaq = totalAtaq + t.getAtaque()
        }
        
        return totalAtaq
    }
    
    // Funcion que calcula la defensa de este heroe
    func defensa() -> Int {
        var totalDef = 0
        
        for t in self.stuff.getlistaItems(){
            totalDef = totalDef + t.getDefensa()
        }
        
        return totalDef
    }
    
    // Funcion que calcula la magia de este heroe
    func magia() -> Int {
        var totalMag = 0
        for t in self.stuff.getlistaItems(){
            totalMag = totalMag + t.getMagia()
        }
        return totalMag
    }
    
    // Funcion que calcula la suerte de este heroe
    func suerte() -> Int {
        var totalSrt = 0
        for t in self.stuff.getlistaItems(){
            totalSrt = totalSrt + t.getSuerte()
            
        }
        return totalSrt
    }
}
