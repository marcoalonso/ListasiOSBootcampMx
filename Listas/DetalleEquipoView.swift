//
//  DetalleEquipoView.swift
//  Listas
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct DetalleEquipoView: View {
    
    //var recibirEquipo: EquipoFutbol?
    let equipo: EquipoFutbol
    
    var body: some View {
        VStack(spacing: 40.0) {
            
            Text("Equipo: \(equipo.nombre)")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text("Titulos: \(equipo.titulosGanados)")
                .font(.title)
                .bold()
                .foregroundColor(.red)
            
            Image(equipo.logo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .shadow(radius: 12)
            
            Spacer()
        }
    }
}

struct DetalleEquipoView_Previews: PreviewProvider {
    static var previews: some View {
        
        let equipoPrueba = EquipoFutbol(nombre: "America", titulosGanados: 12, logo: "pachuca")
        
        DetalleEquipoView(equipo: equipoPrueba)
    }
}
