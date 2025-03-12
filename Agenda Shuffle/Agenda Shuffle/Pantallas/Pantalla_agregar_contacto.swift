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
    let esquiena_redondeadas = CGSize(width: 25, height: 25)
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
            .foregroundStyle(.color)
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.color, .color2]), startPoint: .top, endPoint: .bottom))
                .frame(maxWidth: .infinity, maxHeight: 75)
                .clipShape(RoundedRectangle(cornerSize: esquiena_redondeadas))
                .padding(10)
                //.foregroundColor(Color.color2)
            TextField("Place holder", text: $nombre)
                .padding(20)
                
        }
        
        Text("Colocar el campo del numero telefonico")
            .foregroundStyle(.color)
        TextField("Place holder", text: $numero_telefonico)
            .frame(height: 35)
            .padding(20)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.color2, .color]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 100)
                    //.background(Color.color)
                
                //Circle()
                  //  .frame(width: 65, height:65)
                    //.background(Color.color)
                Image(systemName: "person.crop.circle.badge.plus")
                    .resizable()
                    .foregroundStyle(.white)
                    .scaledToFit()
                    .frame(width: 70)
                    .fontWeight(.bold)
                //Este icono dx para agregar un contacto
                //Icono(tamanio: 65, ruta_icono: "person.crop.circle.badge.plus", padding: 10)
                    .onTapGesture {
                        boton_agregar(nombre, numero_telefonico)
                    }
            }
                ZStack{
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.color2, .color]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 100)
                        //.background(Color.color)
                    
                    //Circle()
                     //   .frame(width: 65, height:65)
                       // .background(Color.color)
                    Image(systemName: "return")
                        .resizable()
                        .foregroundStyle(.white)
                        .scaledToFit()
                        .frame(width: 70)
                        .fontWeight(.bold)
                        
                    //Este es para salir
                    //Icono(tamanio: 65, ruta_icono: "return")
                    //.background(nombre == "" ? Color.pink: Color.indigo)
                        .onTapGesture {
                            boton_salir()
                    }
                }
            }
        //.background(Color.color)
            
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
