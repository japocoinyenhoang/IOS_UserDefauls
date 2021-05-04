//
//  ViewController.swift
//  UserDefaults
//
//  Created by Tardes on 4/5/21.
//

import UIKit

class ViewController: UIViewController {
    //USERDEFAULTS
    //1. Declaración de una KEY
    private let miKey =  "MI_KEY"
    
   // var settings = String ["yen", "Hoang"]
   
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func crearAction(_ sender: Any) {
    }
    
    //RECUPERAR las preferencias del sistema
    
    @IBAction func getAction(_ sender: Any) {
        if let valorString = UserDefaults.standard.string(forKey: miKey) {
            //existe el valor
            mostrarAlert(mensaje: valorString )
        } else {
            mostrarAlert(mensaje: "No se ha recuperado ningún dato de USERTDEFAULTS")
        }
    }
    

   
    //GUARDAR preferencias del sistema
    
    @IBAction func putAction(_ sender: Any) {
        //guardamos en nombre y el apellido
        //acceso
        UserDefaults.standard.set("Yen Hoang", forKey : miKey)
        
        //forzar el gardado
        UserDefaults.standard.synchronize()
    }
    
    
    @IBAction func deleteAction(_ sender: Any) {
        //borrar el string guardado
        UserDefaults.standard.removeObject(forKey: miKey)
        
        //forzar la eliminacion
        UserDefaults.standard.synchronize()
    }

    private func mostrarAlert (mensaje: String) {
        let alert = UIAlertController(title: "mi almacen de datos", message: mensaje, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
    }
}

