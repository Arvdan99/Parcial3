//
//  Alumno.swift
//  PracticaContactos
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno {
    var nombre : String
    var matricula : String
    var contactoe : String
    var parentesco : String
    var telefono : String
    var telefono1 : String
    
    init(nombre: String, matricula: String, contactoe: String, parentesco: String, telefono: String, telefono1: String) {
        self.nombre = nombre
        self.matricula = matricula
        self.contactoe = contactoe
        self.parentesco = parentesco
        self.telefono = telefono
        self.telefono1 = telefono1
    }
}

