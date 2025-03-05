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
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(contactos_actuales) { contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {print("Te envio saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.white)
        }
        .background(Color.black)
    
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.cyan)
                
                Rectangle()
                    .frame(width: 65, height:65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "plus")
                    .background(Color.cyan)
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar la seccion de agregar contacto")
                mostrar_pantalla_agregar_contacto.toggle()
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.cyan)
                
                Circle()
                    .frame(width: 65, height:65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "shuffle")
                    .background(Color.cyan)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intenet pata iniciar la llamada")
            }
        }.background(Color.indigo)
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto){
                PantallaAgregarContacto(
                    boton_salir: {
                        mostrar_pantalla_agregar_contacto.toggle()
                    },
                    boton_agregar: {nombre, numero in
                        let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                        contactos_actuales.append(contacto_nuevo)
                        mostrar_pantalla_agregar_contacto.toggle()
                    }
                )
        }
    }
}

//modelo vista vista modelo
#Preview {
    PantallaAgenda()
}
