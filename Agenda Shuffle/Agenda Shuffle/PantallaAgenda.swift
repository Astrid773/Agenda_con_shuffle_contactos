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
    ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
    ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
    ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
    ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
    ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
]

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.width
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(contactos) { contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {print("Te envio saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.mint)
        }
        .background(Color.gray)
    
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                Rectangle()
                    .frame(width: 65, height:65)
                    .foregroundColor(Color.green)
                Image(systemName: "plus")
                    .background(Color.red)
                    .offset(x: 0, y: -25)
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
            }
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                Circle()
                    .frame(width: 65, height:65)
                    .foregroundColor(Color.green)
                Image(systemName: "shuffle")
                    .background(Color.red)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intenet pata iniciar la llamada")
            }
            
        }
    }
}

//modelo vista vista modelo
#Preview {
    PantallaAgenda()
}
