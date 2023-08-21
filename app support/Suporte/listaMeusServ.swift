//
//  listaMeusDisp.swift
//  app support
//
//  Created by Henrique on 16/08/23.
//

import SwiftUI

struct listaMeusServ: View {
    var iphone : Bool
    var body: some View {
        HStack
        {
            Image(iphone ? "icloud" : "music.svg")
                .resizable()
                .frame(width: 40 , height: 40)
                .padding(.trailing, iphone ? 0 : 10)
            VStack{
                Text(iphone ? "iCloud" : "Apple Music")
                    .frame(width: 150, alignment: .leading)
            
            }
            .padding(.leading, iphone ? 20 : 9)
            Spacer()
        }
    }
}

struct listaMeusServ_Previews: PreviewProvider {
    static var previews: some View {
        listaMeusServ(iphone: false)
    }
}
