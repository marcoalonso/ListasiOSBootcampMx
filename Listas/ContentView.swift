//
//  ContentView.swift
//  Listas
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Section(header:
                                Text("Equipos Futbol")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .background(Color.green)
                    
                    ) {
                        
                        List(equipos) { equipo in
                            NavigationLink(destination: DetalleEquipoView(equipo: equipo)) {
                                
                                HStack {
                                    Image(equipo.logo)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    VStack {
                                        Text(equipo.nombre)
                                            .font(.title2)
                                        
                                        Text("Titulos: \(equipo.titulosGanados)")
                                            .font(.title3)
                                    }
                                }//Hstack
                            }//NavLink
                        }//List
                        .frame(height: 600)
                        .listStyle(.plain)
                    }//Section
                    
                    Section(header: Text("Alumnos")
                        .frame(maxWidth: .infinity)
                        .padding(.all, 10)
                        .font(.title3)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(12)) {
                            
                            List(alumnos) { alumno in
                                NavigationLink(destination: DetalleAlumnoView(alumno: alumno)) {
                                    HStack(spacing: 15.0) {
                                        Image(systemName: alumno.imagen)
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.blue)
                                        
                                        VStack {
                                            Text(alumno.nombre)
                                                .font(.title2)
                                            let promedio = String(format: "%.1f", alumno.promedio)
                                            Text("Promedio: \(promedio)")
                                        }
                                        
                                        Spacer()
                                    }
                                }
                            }
                            .frame(height: 600)
                            .listStyle(.plain)
                            
                        }
                    
                }//Vstack
            }//ScrollView
        }//NavView
    }//Body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
