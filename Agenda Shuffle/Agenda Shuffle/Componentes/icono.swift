//
//  icono.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 3/3/25.
//

import SwiftUI

struct Icono: View {
    var tamanio :CGFloat
    var ruta_icono: String
    var padding: CGFloat = 10
    
    var body: some View {
        Image(systemName: ruta_icono)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: tamanio, height: tamanio)
            .padding(padding)
    }
}

#Preview {
    Icono(tamanio: 50, ruta_icono: "plus")
}
