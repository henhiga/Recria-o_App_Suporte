//
//  fastShopSheetList.swift
//  app support
//
//  Created by Henrique on 15/08/23.
//

import SwiftUI

struct fastShopSheetList: View {
    var nome : String
    var num : String
    var body: some View {
        VStack(alignment: .leading){
            Text(nome)
                .foregroundColor(.gray)
                    
            Text(num)
                .foregroundColor(.blue)
        }
    }
}

struct fastShopSheetList_Previews: PreviewProvider {
    static var previews: some View {
        fastShopSheetList(nome: "sda", num: "1182838239")
    }
}
