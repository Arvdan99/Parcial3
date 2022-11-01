//
//  MenusController.swift
//  PracticaMenus
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MenusController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tvMenus: UITableView!
    

    var Menus : [Menu] = []
    
//Altura de celda
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
}
//Nùmero de secciones que tiene mi table view
func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

//Numero de filas por seccion
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Menus.count
}

//Construye cada celda
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenus") as? CeldaContactoController
    celda?.lblNombre.text = Menus[indexPath.row].Nombre
    celda?.lblTelefono.text = Menus[indexPath.row].Numero
    return celda!
}
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        Menus.append(Menu(Nombre: "Mi Perfil", Numero: "6442011638"))
        Menus.append(Menu(Nombre: "Horario", Numero: "6442011785"))
        Menus.append(Menu(Nombre: "Asistencia", Numero: "6442011785"))
        Menus.append(Menu(Nombre: "Menú Cafeteria", Numero: "6442011785"))
        Menus.append(Menu(Nombre: "Pagos", Numero: "6442011785"))
        
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar" {
            let destino = segue.destination as! EditarContactoController
            destino.Menus = Menus[tvMenus.indexPathForSelectedRow!.row]
            destino.CallBackActualizar = actualizarEtiqueta
        }
        
        if segue.identifier == "goToNuevoMenu" {
            let destino = segue.destination as! NuevoMenuController
            destino.CallBackNuevo = nuevoEtiqueta
        }
    }
    
    func nuevoEtiqueta(Menus: Menu){
        self.Menus.append(Menus)
        tvMenus.reloadData()
    }
    
    
    func actualizarEtiqueta() {
        tvMenus.reloadData()
        }
    
}
