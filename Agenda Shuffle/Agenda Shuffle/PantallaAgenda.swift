//
//  PantallaAgenda.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 2/26/25.
//

import SwiftUI

struct PantallaAgenda: View {
    var body: some View {
        List {
            VStack {
                ForEach(0...45, id: \.self) {_ in
                    ContactoPrevista()
                }
            }
            .background(Color.mint)
        }
    }
}
#Preview {
    PantallaAgenda()
}
