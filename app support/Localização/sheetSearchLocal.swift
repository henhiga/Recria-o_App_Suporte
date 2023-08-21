//
//  sheetSearchLocal.swift
//  app support
//
//  Created by Henrique on 14/08/23.
//

import SwiftUI

struct sheetSearchLocal: View {
    @State var teste = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    HStack{
                        Image(systemName: "location.fill")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        VStack(spacing: 3){
                            Text("Localização atual")
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 40.0)
                            Text("Perto de São Paulo, SP")
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                }.listStyle(GroupedListStyle())
            }
            .searchable(text: $teste, prompt: "Pesquisar por cidade ou CEP")
        }
    }
}

struct sheetSearchLocal_Previews: PreviewProvider {
    static var previews: some View {
        sheetSearchLocal()
    }
}
