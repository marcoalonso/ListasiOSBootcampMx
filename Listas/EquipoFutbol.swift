//
//  EquipoFutbol.swift
//  Listas
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import Foundation

struct EquipoFutbol: Identifiable {
    let id = UUID()
    let nombre: String
    let titulosGanados: Int
    let logo: String
}


let equipos = [
    EquipoFutbol(nombre: "America", titulosGanados: 13, logo: "america"),
    EquipoFutbol(nombre: "Tigres", titulosGanados: 6, logo: "tigres"),
    EquipoFutbol(nombre: "Toluca", titulosGanados: 9, logo: "toluca"),
    EquipoFutbol(nombre: "Chivas", titulosGanados: 10, logo: "chivas"),
    EquipoFutbol(nombre: "Monterrey", titulosGanados: 7, logo: "cruz"),
    EquipoFutbol(nombre: "Pachuca", titulosGanados: 11, logo: "pachuca"),
    EquipoFutbol(nombre: "Pumas", titulosGanados: 9, logo: "pumas")
]

struct Alumno: Identifiable {
    let id = UUID()
    let nombre: String
    let promedio: Double
    let imagen: String
}

let alumnos = [
    Alumno(nombre: "Marco", promedio: 9.7, imagen: "person.circle"),
    Alumno(nombre: "Peter", promedio: 9.9, imagen: "person.wave.2"),
    Alumno(nombre: "Jonathan", promedio: 8.2, imagen: "person.fill"),
    Alumno(nombre: "Juan", promedio: 9.2, imagen: "person.bust.fill"),
    Alumno(nombre: "Heber", promedio: 10, imagen: "person.fill.viewfinder"),
]
 
