
//
//  InventoryViewController.swift
//  DungeonsOfDoom
//
//  Created by Isain on 27/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController {
    
    
    
    var windowTitle:String = "Inventory"
    var heroItemList:[Item] = heroeSelected.getStuff().getlistaItems()
    var heroItemList2:[Item] = [
        Item(nombre: "espada", valor: 4, ataque: 10, defensa: 1, magia: 0, suerte: 2, imagen: UIImage(named: "sword1")!),
        Item(nombre: "espada2", valor: 3, ataque: 4, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "shield3")!),
        Item(nombre: "espada3", valor: 3, ataque: 4, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "sword2")!),
        Item(nombre: "espada4", valor: 3, ataque: 4, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "sword3")!),
        Item(nombre: "espada", valor: 3, ataque: 4, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "sword4")!),
        Item(nombre: "bota", valor: 3, ataque: 4, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "boots")!)
    ]
    
    // inventory parte superior
    @IBOutlet weak var inventoryTitle: UILabel!
    @IBOutlet weak var infoHero: UIImageView!
    @IBOutlet weak var itemHero1: UIImageView!
    @IBOutlet weak var itemHero2: UIImageView!
    @IBOutlet weak var itemHero3: UIImageView!
    @IBOutlet weak var itemHero4: UIImageView!
    @IBOutlet weak var itemHero5: UIImageView!
    @IBOutlet weak var extraItemHero: UIImageView!
    
    // Inventory parte inferior
    // Nombre y vidas
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var c1: UIImageView!
    @IBOutlet weak var c2: UIImageView!
    @IBOutlet weak var c3: UIImageView!
    @IBOutlet weak var c4: UIImageView!
    
    // ataque    magia    moneda
    @IBOutlet weak var atqImage: UIImageView!
    @IBOutlet weak var nAtaque: UILabel!
    @IBOutlet weak var magImage: UIImageView!
    @IBOutlet weak var nMag: UILabel!
    @IBOutlet weak var monImage: UIImageView!
    @IBOutlet weak var nMon: UILabel!
    
    
    // defensa    dados    experiencia
    @IBOutlet weak var defImage: UIImageView!
    @IBOutlet weak var nDef: UILabel!
    @IBOutlet weak var lckImage: UIImageView!
    @IBOutlet weak var nLck: UILabel!
    @IBOutlet weak var expImage: UIImageView!
    @IBOutlet weak var nExp: UILabel!
    
    
    // botoenes de cada item
    @IBAction func item1(_ sender: Any) {
        let position:Int = 0
        deleteItem(position: position)
    }
    
    @IBAction func item2(_ sender: Any) {
        let position:Int = 1
        deleteItem(position: position)
    }
    
    @IBAction func item3(_ sender: Any) {
        let position:Int = 2
        deleteItem(position: position)
    }
    
    @IBAction func item4(_ sender: Any) {
        let position:Int = 3
        deleteItem(position: position)
    }
    
    @IBAction func item5(_ sender: Any) {
        let position:Int = 4
        deleteItem(position: position)
    }
    
    @IBAction func item6(_ sender: Any) {
        let position:Int = 5
        deleteItem(position: position)
    }
    
    func deleteItem(position:Int) {
        
        let alert = UIAlertController(title: "Inventory", message: "Quieres eliminar este item de tu Stuff?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            var stafList = heroeSelected.getStuff().getlistaItems()
            stafList.remove(at: position)
            heroeSelected.getStuff().setListaItems(listaItems: stafList)
            
            switch position {
                case 0:
                    self.itemHero1.image = UIImage(named: "preset_backpack2")
                    break
                case 1:
                    self.itemHero2.image = UIImage(named: "preset_backpack2")
                    break
                case 2:
                    self.itemHero3.image = UIImage(named: "preset_backpack2")
                    break
                case 3:
                    self.itemHero4.image = UIImage(named: "preset_backpack2")
                    break
                case 4:
                    self.itemHero5.image = UIImage(named: "preset_backpack2")
                    break
                case 5:
                    self.extraItemHero.image = UIImage(named: "preset_backpack2")
                    break
            default:
                break
            }
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cambio en titulo, nombre,color y fuente segun el viewcontroller
        inventoryTitle.text = windowTitle
        inventoryTitle.textColor = UIColor.white
        
        // Rellenar los con view los item correspondientes al heroe
        infoHero.image = UIImage(named: "back_heroe2")
        switch heroItemList.count {
        case 1:
            itemHero1.image = heroItemList[0].getImagen()
            itemHero2.image = UIImage(named: "preset_backpack2")
            itemHero3.image = UIImage(named: "preset_backpack2")
            itemHero4.image = UIImage(named: "preset_backpack2")
            itemHero5.image = UIImage(named: "preset_backpack2")
            extraItemHero.image = UIImage(named: "preset_backpack2")
            break
        case 2:
            itemHero1.image = heroItemList[0].getImagen()
            itemHero2.image = heroItemList[1].getImagen()
            itemHero3.image = UIImage(named: "preset_backpack2")
            itemHero4.image = UIImage(named: "preset_backpack2")
            itemHero5.image = UIImage(named: "preset_backpack2")
            extraItemHero.image = UIImage(named: "preset_backpack2")
            break
        case 3:
            itemHero1.image = heroItemList[0].getImagen()
            itemHero2.image = heroItemList[1].getImagen()
            itemHero3.image = heroItemList[2].getImagen()
            itemHero4.image = UIImage(named: "preset_backpack2")
            itemHero5.image = UIImage(named: "preset_backpack2")
            extraItemHero.image = UIImage(named: "preset_backpack2")
            break
        case 4:
            itemHero1.image = heroItemList[0].getImagen()
            itemHero2.image = heroItemList[1].getImagen()
            itemHero3.image = heroItemList[2].getImagen()
            itemHero4.image = heroItemList[3].getImagen()
            itemHero5.image = UIImage(named: "preset_backpack2")
            extraItemHero.image = UIImage(named: "preset_backpack2")
            break
        case 5:
            itemHero1.image = heroItemList[0].getImagen()
            itemHero2.image = heroItemList[1].getImagen()
            itemHero3.image = heroItemList[2].getImagen()
            itemHero4.image = heroItemList[3].getImagen()
            itemHero5.image = heroItemList[4].getImagen()
            extraItemHero.image = UIImage(named: "preset_backpack2")
            break
        case 6:
            itemHero1.image = heroItemList[0].getImagen()
            itemHero2.image = heroItemList[1].getImagen()
            itemHero3.image = heroItemList[2].getImagen()
            itemHero4.image = heroItemList[3].getImagen()
            itemHero5.image = heroItemList[4].getImagen()
            extraItemHero.image = heroItemList[5].getImagen()
            break
        default:
            break
        }
        
        // corazones
        c1.image = UIImage(named: "heart")
        c1.isHidden = true
        c2.image = UIImage(named: "heart")
        c2.isHidden = true
        c3.image = UIImage(named: "heart")
        c3.isHidden = true
        c4.image = UIImage(named: "heart")
        c4.isHidden = true
        
        switch heroeSelected.getVida() {
        case 1:
            c1.isHidden = false
            break
        case 2:
            c1.isHidden = false
            c2.isHidden = false
            break
        case 3:
            c1.isHidden = false
            c2.isHidden = false
            c3.isHidden = false
            break
        case 4:
            c1.isHidden = false
            c2.isHidden = false
            c3.isHidden = false
            c4.isHidden = false
            break
        default:
            break
        }
        
        
        // Rellenar imagenes de imformacion del heroe
        atqImage.image = UIImage(named: "damage")
        magImage.image = UIImage(named: "magic")
        monImage.image = UIImage(named: "money")
        defImage.image = UIImage(named: "defensa")
        lckImage.image = UIImage(named: "lucky")
        expImage.image = UIImage(named: "xp")
        
        // Rellenar valores de informacion heroe seleccionado
        heroName.text = String(heroeSelected.getNombre())
        nAtaque.text = String(heroeSelected.ataque())
        nDef.text = String(heroeSelected.defensa())
        nMag.text = String(heroeSelected.magia())
        nLck.text = String(heroeSelected.suerte())
        nMon.text = String(heroeSelected.getDinero())
        nExp.text = String(heroeSelected.getExperiencia())
        
    }
    


}
