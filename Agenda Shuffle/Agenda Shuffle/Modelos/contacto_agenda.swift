//
//  contacto_agenda.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 2/26/25.
//

import SwiftUI

struct ContactoAgenda: Identifiable {
    var nombre: String
    var telefono: String
    var id: String {nombre}
}

/*
 var nombre = "Pepito Veraz"
 
 var _nombre: String
 
 var nombre: set {
 let nombre_validado = filtrar_palabras(value)
 _nombre = nombre_validado
 } get {
 return _nombre.split(" ")[0]
 }
 */
