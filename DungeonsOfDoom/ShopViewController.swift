//
//  ShopViewController.swift
//  DungeonsOfDoom
//
//  Created by Isain on 27/11/2018.
//  Copyright © 2018 Isain. All rights reserved.
//

import UIKit


class ShopViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var windowTitle:String = "Shop"
    var itemList:[Item] = [
        Item(nombre: "espada", valor: 4, ataque: 10, defensa: 1, magia: 0, suerte: 2, imagen: UIImage(named: "sword1")!),
        Item(nombre: "espada2", valor: 15, ataque: 20, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "shield3")!),
        Item(nombre: "espada3", valor: 30, ataque: 35, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "sword2")!),
        Item(nombre: "espada4", valor: 35, ataque: 40, defensa: 5, magia: 0, suerte: 5, imagen: UIImage(named: "sword3")!),
        Item(nombre: "espada", valor: 10, ataque: 40, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "sword4")!),
        Item(nombre: "espada", valor: 20, ataque: 5, defensa: 40, magia: 0, suerte: 1, imagen: UIImage(named: "armour")!),
        Item(nombre: "espada", valor: 40, ataque: 5, defensa: 30, magia: 0, suerte: 3, imagen: UIImage(named: "armour2")!),
        Item(nombre: "espada", valor: 60, ataque: 5, defensa: 25, magia: 0, suerte: 3, imagen: UIImage(named: "armour3")!),
        Item(nombre: "espada", valor: 10, ataque: 10, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "arrow")!),
        Item(nombre: "espada", valor: 20, ataque: 15, defensa: 5, magia: 0, suerte: 3, imagen: UIImage(named: "arrow2")!),
        Item(nombre: "espada", valor: 60, ataque: 20, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "arrow3")!),
        Item(nombre: "espada", valor: 5, ataque: 4, defensa: 5, magia: 10, suerte: 1, imagen: UIImage(named: "boots")!),
        Item(nombre: "espada", valor: 10, ataque: 4, defensa: 5, magia: 20, suerte: 3, imagen: UIImage(named: "boots2")!),
        Item(nombre: "espada", valor: 15, ataque: 4, defensa: 5, magia: 20, suerte: 1, imagen: UIImage(named: "cap")!),
        Item(nombre: "espada", valor: 20, ataque: 4, defensa: 5, magia: 50, suerte: 1, imagen: UIImage(named: "cap2")!),
        Item(nombre: "espada", valor: 50, ataque: 4, defensa: 5, magia: 60, suerte: 40, imagen: UIImage(named: "cap3")!),
        Item(nombre: "espada", valor: 10, ataque: 10, defensa: 12, magia: 0, suerte: 3, imagen: UIImage(named: "helmet1")!),
        Item(nombre: "espada", valor: 20, ataque: 10, defensa: 10, magia: 0, suerte: 6, imagen: UIImage(named: "helmet2")!),
        Item(nombre: "espada", valor: 30, ataque: 10, defensa: 15, magia: 0, suerte: 3, imagen: UIImage(named: "helmet3")!),
        Item(nombre: "espada", valor: 40, ataque: 20, defensa: 20, magia: 0, suerte: 1, imagen: UIImage(named: "helmet4")!),
        Item(nombre: "espada", valor: 50, ataque: 35, defensa: 50, magia: 0, suerte: 5, imagen: UIImage(named: "helmet5")!),
        Item(nombre: "espada", valor: 5, ataque: 4, defensa: 5, magia: 10, suerte: 1, imagen: UIImage(named: "necklace")!),
        Item(nombre: "espada", valor: 10, ataque: 4, defensa: 5, magia: 10, suerte: 15, imagen: UIImage(named: "potion")!),
        Item(nombre: "espada", valor: 5, ataque: 4, defensa: 5, magia: 30, suerte: 1, imagen: UIImage(named: "potion2")!),
        Item(nombre: "espada", valor: 2, ataque: 4, defensa: 5, magia: 23, suerte: 1, imagen: UIImage(named: "ring")!),
        Item(nombre: "espada", valor: 3, ataque: 4, defensa: 5, magia: 21, suerte: 4, imagen: UIImage(named: "ring2")!),
        Item(nombre: "espada", valor: 20, ataque: 10, defensa: 5, magia: 10, suerte: 3, imagen: UIImage(named: "scepter")!),
        Item(nombre: "espada", valor: 20, ataque: 12, defensa: 5, magia: 15, suerte: 2, imagen: UIImage(named: "scepter2")!),
        Item(nombre: "espada", valor: 10, ataque: 15, defensa: 5, magia: 0, suerte: 0, imagen: UIImage(named: "scepter3")!),
        Item(nombre: "espada", valor: 10, ataque: 20, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "shield")!),
        Item(nombre: "espada", valor: 15, ataque: 25, defensa: 5, magia: 0, suerte: 5, imagen: UIImage(named: "shield2")!),
        Item(nombre: "espada", valor: 20, ataque: 10, defensa: 5, magia: 0, suerte: 1, imagen: UIImage(named: "shield3")!),
        Item(nombre: "espada", valor: 10, ataque: 5, defensa: 10, magia: 0, suerte: 7, imagen: UIImage(named: "shield4")!),
        Item(nombre: "espada", valor: 20, ataque: 4, defensa: 12, magia: 0, suerte: 8, imagen: UIImage(named: "sword1")!),
        Item(nombre: "espada", valor: 30, ataque: 13, defensa: 4, magia: 0, suerte: 10, imagen: UIImage(named: "sword2")!),
        Item(nombre: "espada", valor: 40, ataque: 40, defensa: 20, magia: 0, suerte: 4, imagen: UIImage(named: "sword3")!),
        Item(nombre: "espada", valor: 60, ataque: 50, defensa: 60, magia: 0, suerte: 5, imagen: UIImage(named: "sword4")!)
        ]
    
    
    @IBOutlet weak var pickerItems: UIPickerView!
    @IBOutlet weak var shopTitle: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        // Esta vista contiene todo lo que se mostrara en el pickerview
        let myView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        // Agregare las imagenes de los item a la vista
        let imageView:UIImageView = UIImageView(frame: CGRect(x: -100, y: 0, width: 100, height: 100))
        imageView.image = itemList[row].getImagen()
        myView.addSubview(imageView)
        
        // Ataque de cada item
        let textItemView:UILabel = UILabel(frame: CGRect(x: 20, y: -40, width: 100, height: 100))
        textItemView.text = String("Ataque: \(itemList[row].getAtaque())")
        textItemView.textColor = UIColor.white
        myView.addSubview(textItemView)
        
        // Defensa de cada item
        let fenderItemView:UILabel = UILabel(frame: CGRect(x: 20, y: -20, width: 100, height: 100))
        fenderItemView.text = String("Defensa: \(itemList[row].getDefensa())")
        fenderItemView.textColor = UIColor.white
        myView.addSubview(fenderItemView)
        
        // Magia de cada Item
        let magicItemView:UILabel = UILabel(frame: CGRect(x: 20, y: 0, width: 100, height: 100))
        magicItemView.text = String("Magia: \(itemList[row].getMagia())")
        magicItemView.textColor = UIColor.white
        myView.addSubview(magicItemView)
        
        // suerte de cada Item
        let luckItemView:UILabel = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        luckItemView.text = String("Suerte: \(itemList[row].getSuerte())")
        luckItemView.textColor = UIColor.white
        myView.addSubview(luckItemView)
        
        // precio de cada Item
        let priceItemView:UILabel = UILabel(frame: CGRect(x: 60, y: 40, width: 100, height: 100))
        priceItemView.text = String("Precio: \(itemList[row].getValor()) ")
        if itemList[row].getValor() < heroeSelected.getDinero() {
             priceItemView.textColor = UIColor.green
        } else {
             priceItemView.textColor = UIColor.red
        }
       
        myView.addSubview(priceItemView)
        
        return myView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    
    
    @IBOutlet weak var shopImage: UIImageView!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    // Boton que activa la accion de comprar arma
    @IBAction func BuyActionButton(_ sender: Any) {
        let row:Int = pickerItems.selectedRow(inComponent: 0)
        
        if heroeSelected.getDinero() > self.itemList[row].getValor() {
            if heroeSelected.getStuff().getlistaItems().count >= 6 {
                let alert = UIAlertController(title: "Shop", message: "Tienes completo tu Stuff, elimina el item que ya no te sirva", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else {
                let alert = UIAlertController(title: "Quieres Comprar esta arma", message: "Comprar este arma costara \(itemList[row].getValor()) monedas", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
                    
                    let buyItem:Item = Item(nombre: self.itemList[row].getNombre(), valor: self.itemList[row].getValor(), ataque: self.itemList[row].getAtaque(), defensa: self.itemList[row].getDefensa(), magia: self.itemList[row].getMagia(), suerte: self.itemList[row].getSuerte(), imagen: self.itemList[row].getImagen())
                    
                    var itemHeroList = heroeSelected.getStuff().getlistaItems()
                    itemHeroList.append(buyItem)
                    heroeSelected.getStuff().setListaItems(listaItems: itemHeroList)
                    heroeSelected.setDinero(dinero: heroeSelected.getDinero() - self.itemList[row].getValor())
                    self.money.text = String(heroeSelected.getDinero())
                    
                    
                }))
                
                
                alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                
                self.present(alert, animated: true)
            }
         } else {
            let alert = UIAlertController(title: "Shop", message: "No tienes monedas para comprar esta arma", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerItems.delegate = self
        pickerItems.dataSource = self
        
        shopTitle.text = windowTitle
        shopTitle.textColor = UIColor.white
        shopTitle.font = UIFont(name: "System", size: 45)
        
        // Valor, imagen en monedas que tiene el hero seleccionado
        shopImage.image = UIImage(named: "money")
        money.text = String(heroeSelected.getDinero())
        money.textColor = UIColor.white
        
        // Nombre boton comprar item
        buyButton.setTitle("Buy Weapon", for: .normal)
        
        // Arma del Shop seleccionada al ingresar a la pantalla que por defecto siempre sera la primera
        pickerItems.selectedRow(inComponent: 0)
        

    }
    



}
