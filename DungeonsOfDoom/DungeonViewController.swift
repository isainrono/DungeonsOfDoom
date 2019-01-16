//
//  DungeonViewController.swift
//  DungeonsOfDoom
//
//  Created by Isain on 27/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import UIKit

var monsterSelected:Monstruo = Monstruo()

class DungeonViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    var titleDungeon:String = "Dungeon"
    var monsterList:[Monstruo] = [
        Monstruo(nombre: "monstruo1", ataque: 15, vida: 3, dinero: 5, experiencia: 15, imagen: UIImage(named: "monster1")!),
        Monstruo(nombre: "monstruo2", ataque: 14, vida: 3, dinero: 5, experiencia: 15, imagen: UIImage(named: "monster2")!),
        Monstruo(nombre: "monstruo3", ataque: 5, vida: 3, dinero: 5, experiencia: 5, imagen: UIImage(named: "monster3")!),
        Monstruo(nombre: "monstruo4", ataque: 8, vida: 3, dinero: 5, experiencia: 8, imagen: UIImage(named: "monster4")!),
        Monstruo(nombre: "monstruo4", ataque: 6, vida: 3, dinero: 5, experiencia: 6, imagen: UIImage(named: "monster5")!),
        Monstruo(nombre: "monstruo4", ataque: 3, vida: 3, dinero: 5, experiencia: 3, imagen: UIImage(named: "monster6")!),
        Monstruo(nombre: "monstruo4", ataque: 30, vida: 3, dinero: 5, experiencia: 30, imagen: UIImage(named: "monster7")!),
        Monstruo(nombre: "monstruo4", ataque: 40, vida: 3, dinero: 5, experiencia: 40, imagen: UIImage(named: "monster8")!),
        Monstruo(nombre: "monstruo4", ataque: 50, vida: 3, dinero: 5, experiencia: 50, imagen: UIImage(named: "monster9")!),
        Monstruo(nombre: "monstruo4", ataque: 10, vida: 3, dinero: 5, experiencia: 10, imagen: UIImage(named: "monster10")!),
        Monstruo(nombre: "monstruo4", ataque: 10, vida: 3, dinero: 5, experiencia: 10, imagen: UIImage(named: "monster12")!),
        Monstruo(nombre: "monstruo4", ataque: 4, vida: 3, dinero: 5, experiencia: 4, imagen: UIImage(named: "monster13")!),
        Monstruo(nombre: "monstruo4", ataque: 30, vida: 3, dinero: 5, experiencia: 30, imagen: UIImage(named: "monster14")!)
    ]
    
    
    @IBOutlet weak var pickerMonter: UIPickerView!
    @IBOutlet weak var dungeonTitle: UILabel!
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return monsterList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let monsterView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        let imageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
        imageView.image = monsterList[row].getImagen()
        monsterView.addSubview(imageView)
        
        let nameMonsterView:UILabel = UILabel(frame: CGRect(x: 20, y: -40, width: 100, height: 100))
        nameMonsterView.text = String("Nombre: \(monsterList[row].getNombre())")
        nameMonsterView.textColor = UIColor.white
        monsterView.addSubview(nameMonsterView)
        
        let atackMonsterView:UILabel = UILabel(frame: CGRect(x: 20, y: -20, width: 100, height: 100))
        atackMonsterView.text = String("Ataque: \(monsterList[row].getAtaque())")
        atackMonsterView.textColor = UIColor.white
        monsterView.addSubview(atackMonsterView)
        
        let fenderItemView:UILabel = UILabel(frame: CGRect(x: 20, y: 0, width: 100, height: 100))
        fenderItemView.text = String("Exp: \(monsterList[row].getExperiencia())")
        fenderItemView.textColor = UIColor.white
        monsterView.addSubview(fenderItemView)
        
        
        let moneyItemView:UILabel = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        moneyItemView.text = String("Dinero: \(monsterList[row].getDinero())")
        moneyItemView.textColor = UIColor.white
        monsterView.addSubview(moneyItemView)
        return monsterView
    }
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    
    // Boton para luchar
    @IBAction func btnfight(_ sender: Any) {
        let row:Int = pickerMonter.selectedRow(inComponent: 0)
        monsterSelected = monsterList[row]
    }
    
    @IBAction func prueba(_ sender: Any) {
        let row:Int = pickerMonter.selectedRow(inComponent: 0)
        monsterSelected = monsterList[row]
        print(monsterSelected.getNombre())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerMonter.delegate = self
        pickerMonter.dataSource = self
        dungeonTitle.text = titleDungeon
        
        pickerMonter.selectedRow(inComponent: 0)
        

    }
    



}
