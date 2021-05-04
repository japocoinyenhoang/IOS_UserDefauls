//
//  ViewController.swift
//  users
//
//  Created by Tardes on 4/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    //para poder usar el USER DEFAULS necesitamos:
    //1. Declaracion de una KEY
    private let miKey = "MI KEY"
    
    @IBOutlet weak var texto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Recuperar las preferencias del sistema
    @IBAction func getAction(_ sender: Any) {
    }
    
    //Guardar Preferencias del sistema
    @IBAction func putAction(_ sender: Any) {
    }
    
    //Eliminar las preferencias del sistema
    @IBAction func DeleteAction(_ sender: Any) {
    }
}

