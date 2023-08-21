//
//  meusDispView.swift
//  app support
//
//  Created by Henrique on 16/08/23.
//

import SwiftUI

struct meusDispView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment: .trailing){
            Button{
                presentationMode.wrappedValue.dismiss()
            }label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
            }.padding()
            
            
            Text("Meus dispositivos")
                .font(.largeTitle)
                .bold()
                .padding(.trailing, 88)
            listaMeusDisp(iphone: true, textoCima: "Gustavo's iPhone", textoBaixo: "Este iPhone Pro")
                .padding(.leading, 20)
            Divider()
                .frame(width: 303)
            listaMeusDisp(iphone: false, textoCima: "Gustavo's iPhone", textoBaixo: "Este iPhone Pro")
                .padding(.leading, 20)
            
            Divider()
                .frame(width: 303)
            Group{
                Text("Você pode gerenciar seus dispositvos em ").foregroundColor(.gray) .font(.system(size: 15)) +
                Text("Ajustes").foregroundColor(.blue) .font(.system(size: 15)) +
                Text(". Para gerenciar AirPods, acesse").foregroundColor(.gray) .font(.system(size: 15)) +
                Text(" Buscar.") .foregroundColor(.blue) .font(.system(size: 15))
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            Spacer()
        }
    }
}

struct meusDispView_Previews: PreviewProvider {
    static var previews: some View {
        meusDispView()
    }
}
