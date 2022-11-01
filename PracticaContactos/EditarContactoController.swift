//
//  EditarContactoController.swift
//  PracticaMenus
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EditarContactoController: UIViewController{
    
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtTelefono: UITextField!
    
    var Menus : Menu?
    var CallBackActualizar : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Menus != nil {
            
            txtNombre.text = Menus!.Nombre
            txtTelefono.text = Menus!.Numero
        }
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if CallBackActualizar != nil {
            
            Menus?.Nombre = txtNombre.text!
            Menus?.Numero = txtTelefono.text!
            CallBackActualizar!()
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
}
