//
//  AlumnoController.swift
//  PracticaContactos
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AlumnoController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var Alumnos : [Alumno] = []
   
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alumnos.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdalumno") as? CeldaAlumnoController
        celda?.lblTexto.text = Alumnos[indexPath.row].nombre
        celda?.lblTexto1.text = Alumnos[indexPath.row].nombre
       
        
        
    
        //celda?.image1.layer.backgroundColor = UIColor.blue.cgColor
        
        return celda!
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        Alumnos.append(Alumno(nombre: "DANEY", matricula: "199468", contactoe: "JAVIER", parentesco: "PAPÁ", telefono: "6442011771", telefono1: "199468"))
       
        
    }
    
}
