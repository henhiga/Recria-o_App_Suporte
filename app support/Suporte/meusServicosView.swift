//
//  meusServicosView.swift
//  app support
//
//  Created by Henrique on 16/08/23.
//

import SwiftUI

struct meusServicosView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
            VStack{
                listaMeusServ(iphone: true)
                    .padding(.leading, 15)
                Divider()
                    .frame(width: 303)
                listaMeusServ(iphone: false)
                    .padding(.leading, 18)
                Divider()
                    .frame(width: 303)
                Spacer()
            }
            .navigationTitle("Meus serviços")
            .toolbar{
                ToolbarItem{
                    Button{
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .font(.title)
                    }
                }
            }

        }
    }
}

struct meusServicosView_Previews: PreviewProvider {
    static var previews: some View {
        meusServicosView()
    }
}
