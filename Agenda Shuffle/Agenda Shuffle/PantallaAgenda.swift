//
//  PantallaAgenda.swift
//  Agenda Shuffle
//
//  Created by Astrid C. Sanchez L. on 2/26/25.
//
import SwiftUI

enum PantallasDisponibles: String, Identifiable {
    case pantalla_agregar, pantalla_aleatorio
    
    var id: String { rawValue }
}

struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
        ContactoAgenda(nombre: "Juanmi", telefono: "12345"),
    ]
    
    @State var pantalla_a_mostrar: PantallasDisponibles?
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(contactos_actuales) { contacto in
                        NavigationLink{
                            Link("Visit Apple", destination: URL(string: "https://www.apple.com")!)
                        } label: {
                            ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {print("Te envio saludos \(contacto.nombre) desde la pantalla de agenda")})
                        }
                    }
                }
                .frame(alignment: Alignment.center)
                .padding(10)
            }
            .background(
                Image("Fondo2")
                    .resizable(resizingMode: .stretch)
                    .opacity(0.75)
            )
        }
        
    
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            
            ZStack{
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.color, .color3]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100)
                Circle()
                    .frame(width: 65, height:65)
                Image(systemName: "plus")
                    .resizable()
                    .foregroundStyle(Color.color2)
                    .scaledToFit()
                    .frame(width: 30)
                    .fontWeight(.heavy)
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar la seccion de agregar contacto")
            pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.color, .color3]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100)
                Circle()
                    .frame(width: 65, height:65)
                Image(systemName: "shuffle")
                    .resizable()
                    .foregroundStyle(Color.color2)
                    .scaledToFit()
                    .frame(width: 30)
                    .fontWeight(.heavy)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intenet pata iniciar la llamada")
                pantalla_a_mostrar = PantallasDisponibles.pantalla_aleatorio
            }
        }.background(Color.black) /**AQUI!!!**/
            .sheet(isPresented: $mostrar_pantalla_agregar_contacto){
                
        }
            .sheet(item: $pantalla_a_mostrar) { pantalla in
                switch(pantalla) {
                case .pantalla_agregar:
                    PantallaAgregarContacto(
                        boton_salir: {
                            pantalla_a_mostrar = nil
                        },
                        boton_agregar: {nombre, numero in
                            let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                            contactos_actuales.append(contacto_nuevo)
                            pantalla_a_mostrar = nil
                        }
                    )
                case .pantalla_aleatorio:
                    pantalla_del_ganador(contacto_a_molestar: contactos_actuales[0])
                }
        }
        
    }
}

//modelo vista vista modelo
#Preview {
    PantallaAgenda()
}
