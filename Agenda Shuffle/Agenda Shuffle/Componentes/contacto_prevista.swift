//
//  contacto_prevista.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 2/26/25.
//

import SwiftUI

let contacto_prueba = ContactoAgenda(nombre:"Juandfuchvhf", telefono: "12345" )

struct ContactoPrevista: View {
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado")}
    
    let esquiena_redondeadas = CGSize(width: 25, height: 25)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center) {
            Spacer()
            
            VStack {
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquiena_redondeadas))
                    .background(Color.blue)
            } .background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 10) {
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            .background(Color.cyan)
            .frame(maxWidth: .infinity, alignment: .leading)
        
        Spacer()
        
    }
        .frame(maxWidth: .infinity)
        .background(Color.cyan)
        .clipShape(RoundedRectangle(cornerSize: esquiena_redondeadas))
        .onTapGesture {
            al_pulsar()
        }
    }
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
