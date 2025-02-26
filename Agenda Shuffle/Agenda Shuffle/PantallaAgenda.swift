//
//  PantallaAgenda.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 2/26/25.
//
import SwiftUI

let contactos = [
    ContactoAgenda(nombre: "Juan", telefono: "12345"),
    ContactoAgenda(nombre: "Juana", telefono: "12345"),
    ContactoAgenda(nombre: "Juanita", telefono: "12345"),
    ContactoAgenda(nombre: "Juanguas", telefono: "12345"),
    ContactoAgenda(nombre: "Juanito", telefono: "12345"),
    ContactoAgenda(nombre: "Juances", telefono: "12345"),
    ContactoAgenda(nombre: "Juanlim", telefono: "12345"),
    ContactoAgenda(nombre: "Juanes", telefono: "12345"),
    ContactoAgenda(nombre: "Juansi", telefono: "12345"),
    ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
]

struct PantallaAgenda: View {
    var body: some View {
        List {
            VStack {
                ForEach(contactos) {contacto in
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
            }
            .background(Color.mint)
        }
    }
}

//modelo vista vista modelo
#Preview {
    PantallaAgenda()
}
