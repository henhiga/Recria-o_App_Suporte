//
//  TerceiraAba.swift
//  app support
//
//  Created by Henrique on 14/08/23.
//

import SwiftUI

struct atividadeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image(systemName: "clock.fill")
                    .foregroundColor(Color.gray)
                    .padding(.bottom, 2)
                    .font(.largeTitle)
                
                Text("Nenhuma atividade de suporte nos últimos 90 dias")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 3.0)
                Text("Reservas, chamadas e bate-papos passados e futuros com o Suporte da Apple serão exibidos aqui")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
            }
            .navigationTitle("Atividade recente")
        }
    }
}

struct TerceiraAba_Previews: PreviewProvider {
    static var previews: some View {
        atividadeView()
    }
}
