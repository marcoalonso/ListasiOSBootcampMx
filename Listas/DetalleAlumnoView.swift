//
//  DetalleAlumnoView.swift
//  EquiposFutbolSwiftUI
//
//  Created by Marco Alonso Rodriguez on 24/04/23.
//

import SwiftUI

struct DetalleAlumnoView: View {
    
    let alumno: Alumno
    
    var body: some View {
        VStack {
            Text("Alumno: \(alumno.nombre)")
                .font(.title)
                .bold()
            
            Image(systemName: alumno.imagen)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 300, maxHeight: 400)
                .shadow(radius: 12)
            
            
            Text("Promedio: \(alumno.promedio)")
                .font(.title3)
            
            Spacer()
                
        }
    }
}

struct DetalleAlumnoView_Previews: PreviewProvider {
    static var previews: some View {
        let alumnoDemo = Alumno(nombre: "Alonso", promedio: 9.8, imagen: "person.fill")
        
        DetalleAlumnoView(alumno: alumnoDemo)
    }
}
