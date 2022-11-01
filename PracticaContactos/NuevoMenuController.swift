//
//  NuevoContactoController.swift
//  PracticaMenus
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class NuevoMenuController: UIViewController {
    
    var Menus : Menu?
    var CallBackNuevo : ((Menu) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtTelefono: UITextField!
    
    override func viewDidLoad() {
    
    }
    
    
    @IBAction func doTapNuevoMenu(_ sender: Any) {
        if CallBackNuevo != nil {
            Menus = Menu(Nombre: txtNombre.text ?? "Nombre", Numero: txtTelefono.text ?? "Numero")
            CallBackNuevo!(Menus!)
            self.navigationController?.popViewController(animated: true)
        }
     }
    
}
    

