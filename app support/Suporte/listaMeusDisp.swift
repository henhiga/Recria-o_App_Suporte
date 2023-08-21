//
//  listaMeusDisp.swift
//  app support
//
//  Created by Henrique on 16/08/23.
//

import SwiftUI

struct listaMeusDisp: View {
    var iphone : Bool
    var textoCima: String
    var textoBaixo: String
    var body: some View {
        HStack
        {
            Image(iphone ? "iphone" : "ipad2")
                .resizable()
                .frame(width: iphone ? 20 : 40 , height: iphone ? 40 : 40)
                .padding(.leading, iphone ? 8 : 0)
            VStack{
                Text(textoCima)
                    .frame(width: 150, alignment: .leading)
                Text(textoBaixo)
                    .font(.footnote)
                    .frame(width: 148, alignment: .leading)
                    .foregroundColor(Color.gray)
                
            
            }
            .padding(.leading, iphone ? 30 : 19)
            Spacer()
        }
    }
}

struct listaMeusDisp_Previews: PreviewProvider {
    static var previews: some View {
        listaMeusDisp(iphone: false, textoCima: "Gustavo's iPhone", textoBaixo: "Este iPhone Pro")
    }
}
