//
//  Pantalla_agregar_contacto.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 3/3/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    @State private var imagen_seleccionada: String = "Imagen"
    
    var boton_salir: () -> Void = {
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    var boton_agregar: (_ nombre: String, _ numero: String) -> Void = {nombre, numero in
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.color2)
            TextField("Place holder", text: $nombre)
                .padding(10)
        }
        
        Text("Colocar el campo del numero telefonico")
        TextField("Place holder", text: $numero_telefonico)
            .frame(height: 35)
            .padding(20)
        
        HStack{
            //Este icono dx para agregar un contacto
            Icono(tamanio: 65, ruta_icono: "person.crop.circle.badge.plus", padding: 10)
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico)
                }
            
            Spacer()
            //Este es para salir
            Icono(tamanio: 65, ruta_icono: "return")
                .background(nombre == "" ? Color.pink: Color.indigo)
                .onTapGesture {
                    boton_salir()
                }
        }
        .background(LinearGradient(gradient: Gradient(colors: [.color2, .color]), startPoint: .top, endPoint: .bottom))
        
        HStack{
            Image("imagen")
                .resizable()
                .scaledToFit()
                .frame(width: 75)
        }
    }
}

#Preview {
    PantallaAgregarContacto()
}
