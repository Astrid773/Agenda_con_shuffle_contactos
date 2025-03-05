//
//  pantalla_del_ganador.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Telefoncio", telefono: "363636")

struct pantalla_del_ganador: View {
    var contacto_a_molestar: ContactoAgenda
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color.indigo)
                .frame(width: 250)
            HStack{
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
            }
        }
        
        Text(contacto_a_molestar.nombre)
        Text(contacto_a_molestar.telefono)
    }
}

#Preview {
    pantalla_del_ganador(contacto_a_molestar: contacto_alterno)
}
