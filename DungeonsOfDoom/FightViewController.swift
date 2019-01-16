//
//  FightViewController.swift
//  DungeonsOfDoom
//
//  Created by isain on 12/01/2019.
//  Copyright © 2019 Isain. All rights reserved.
//

import UIKit

class FightViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    // Array dados monstruo
    var dM: [UIImage] = [UIImage(named: "dice1")!, UIImage(named:"dice2")!,UIImage(named:"dice3")!,UIImage(named:"dice4")!,UIImage(named:"dice5")!,UIImage(named:"dice6")!,UIImage(named:"dice7")!,UIImage(named:"dice8")!,UIImage(named:"dice9")!,UIImage(named:"dice10")!,UIImage(named:"dice11")!,UIImage(named:"dice12")!]
    
    // Array dado hero
    var dH: [UIImage] = [UIImage(named: "dice1U")!,UIImage(named: "dice2U")!,UIImage(named: "dice3U")!,UIImage(named: "dice4U")!,UIImage(named: "dice5U")!,UIImage(named: "dice6U")!,UIImage(named: "dice7U")!,UIImage(named: "dice8U")!,UIImage(named: "dice9U")!,UIImage(named: "dice10U")!,UIImage(named: "dice11U")!,UIImage(named: "dice12U")!,]
    // Dados monstruo
    var dados:Int = 0
    // Dados heroe
    var dadosH:Int = 0
    
    var dadoMSelected = 0
    var dadoHSelected = 0
    
    // pickerview de los dados a tirar del monstruo
    @IBOutlet weak var pickerDados: UIPickerView!
    // Picker de los dados del heroe
    @IBOutlet weak var pickerDHero: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        monsterDados()
        heroDados()
        
        if pickerView == pickerDados{
           return dados
        } else if (pickerView == pickerDHero){
           return dadosH
        }
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 12
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let myView:UIView = UIView(frame: CGRect(x: 0, y:0, width: 100, height:100))
        
        // Ahora pongo la imagen de los dados
        let imageView:UIImageView = UIImageView(frame: CGRect(x: 0, y:0, width: 100, height:100))
       
        if(pickerView == pickerDados) {
            //let rDado:Int = randomDado()
            //imageView.image = UIImage(named: "dice\(rDado)")!
                imageView.image = dM[row]
                myView.addSubview(imageView)

           
            
        } else if (pickerView == pickerDHero) {
            
            imageView.image = dH[row]
            myView.addSubview(imageView)
        }
        
        
        
        return myView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    // Mensaje de informacion de la batalla
    @IBOutlet weak var message: UILabel!
    
    // Boton para iniciar la lucha
    @IBAction func btnFight(_ sender: Any) {
        var totalDM:Int = 0
        var totalDH:Int = 0
        
        if(heroeSelected.getVida() > 0){
            for n in 0...dados-1{
                let rDado:Int = randomDado()
                pickerDados.selectRow(rDado - 1, inComponent: n, animated: true)
                totalDM = totalDM + rDado
            }
            
            for o in 0...dadosH-1 {
                let pDado:Int = randomDado()
                pickerDHero.selectRow(pDado - 1, inComponent: o, animated: true)
                totalDH = totalDH + pDado
            }
            
            
            self.mGolpe.text = String(totalDM)
            self.hGolpe.text = String(totalDH)
            
            if(totalDH > totalDM){
                monsterSelected.setVida(vida: monsterSelected.getVida() - 1)
                message.text = "GANASTE ESTE ASALTO!!, CONTINUA QUITANDOLE VIDAS A \(monsterSelected.getNombre())"
            } else if (totalDM > totalDH) {
                heroeSelected.setVida(vida: heroeSelected.getVida() - 1)
                message.text = "\(monsterSelected.getNombre()) TE HA QUITADO 1 VIDA EN ESTE ASALTO"
            } else {
                let alert = UIAlertController(title: "EMPATE", message: "Este asalto ha quedado empatado sigue intentando acabar con las vidas del monstruo", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
            }
            
             showLive()
            
            if(heroeSelected.getVida() <= 0) {
                let alert = UIAlertController(title: "GAME OVER", message: "PERDISTE TODAS TUS VIDAS", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
            } else if (monsterSelected.getVida() <= 0){
                heroeSelected.setDinero(dinero: monsterSelected.getDinero() + heroeSelected.getDinero())
                heroeSelected.setExperiencia(experiencia: heroeSelected.getExperiencia() + monsterSelected.getExperiencia())
                let alert = UIAlertController(title:"\(monsterSelected.getNombre()) Derrotado", message: "Haz ganado esta batalla, haz conseguido \(monsterSelected.getDinero()) nuevas monedas", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true)
            }
            
        } else {
            print("no tienes vida sufiente para luchar")
        }
        
    }
    
    // imagenes de monstruo y vidas
    @IBOutlet weak var mosterImage: UIImageView!
    @IBOutlet weak var mh1: UIImageView!
    @IBOutlet weak var mh2: UIImageView!
    @IBOutlet weak var mh3: UIImageView!
    @IBOutlet weak var mGolpe: UILabel!
    
    // imagenes de hero y vidas
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var hh1: UIImageView!
    @IBOutlet weak var hh2: UIImageView!
    @IBOutlet weak var hh3: UIImageView!
    @IBOutlet weak var hh4: UIImageView!
    @IBOutlet weak var hGolpe: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pickerDados.delegate = self
        pickerDados.dataSource = self
        
        pickerDHero.delegate = self
        pickerDHero.dataSource = self


        mosterImage.image = monsterSelected.getImagen()
        mGolpe.text = "Su Golpe:  0"
        
        heroImage.image = heroeSelected.getImagen()
        hGolpe.text = "Su Golpe:  0"
        
        showFullLive()
        showLive()
        
        
    }
    
    
    
    // Función de marca los dadod que tirara el monstruo
    func monsterDados(){
        if(monsterSelected.getAtaque() <= 10){
            dados = 1
        } else if (monsterSelected.getAtaque() > 10 && monsterSelected.getAtaque() <= 25){
            dados = 2
        } else {
            dados = 3
        }
    }
    
    // Función que marca los dados del usuario
    func heroDados(){
        let total:Int = (heroeSelected.ataque() + heroeSelected.defensa() + heroeSelected.magia() + heroeSelected.suerte()) / 4
        print(total)
        if(total <= 10){
            dadosH = 1
        }else if (total > 10 && total <= 25) {
            dadosH = 2
        } else {
            dadosH = 3
        }
    }
    
    // Función random para cada dado
    func randomDado() -> Int{
        let dRandom = Int.random(in: 1..<12)
        return dRandom
        
    }
    
    // Funcion mostrar vida
    func showFullLive() {
        // asignar corazones monstruos
        mh1.image = UIImage(named: "heart")
        mh2.image = UIImage(named: "heart")
        mh3.image = UIImage(named: "heart")
        
        // asignar corazones heroes
        hh1.image = UIImage(named: "heart")
        hh2.image = UIImage(named: "heart")
        hh3.image = UIImage(named: "heart")
        hh4.image = UIImage(named: "heart")
    }
    // Funcion que muestra la vida de los personajes monstruo y heroe
    func showLive() {
        switch monsterSelected.getVida(){
        case 0:
            mh1.isHidden = true
            mh2.isHidden = true
            mh3.isHidden = true
            break
        case 1:
            mh1.isHidden = false
            mh2.isHidden = true
            mh3.isHidden = true
            break
        case 2:
            mh1.isHidden = false
            mh2.isHidden = false
            mh3.isHidden = true
            break
        case 3:
            mh1.isHidden = false
            mh2.isHidden = false
            mh3.isHidden = false
            break
        default:
            break
        }
        
        switch heroeSelected.getVida() {
        case 0:
            hh1.isHidden = true
            hh2.isHidden = true
            hh3.isHidden = true
            hh4.isHidden = true
            break
        case 1:
            hh1.isHidden = false
            hh2.isHidden = true
            hh3.isHidden = true
            hh4.isHidden = true
            break
        case 2:
            hh1.isHidden = false
            hh2.isHidden = false
            hh3.isHidden = true
            hh4.isHidden = true
            break
        case 3:
            hh1.isHidden = false
            hh2.isHidden = false
            hh3.isHidden = false
            hh4.isHidden = true
            break
        case 4:
            hh1.isHidden = false
            hh2.isHidden = false
            hh3.isHidden = false
            hh4.isHidden = false
            break
        default:
            break
        }
    }

}
