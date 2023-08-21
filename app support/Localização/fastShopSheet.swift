//
//  fastShopSheet.swift
//  app support
//
//  Created by Henrique on 15/08/23.
//

import SwiftUI

struct fastShopSheet: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Text("Fast Shop By WeCare Shopping Pátio Higienópolis")
                    .font(.title)
                    .bold()
                Spacer()
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(.gray)
                        .font(.title2)
                }
                .padding(.bottom, 100)
            }.padding(.horizontal)
            Text("Av. Higienópolis, 698 Lj 133 134, São Paulo")
                .frame(width: 300 ,alignment: .leading)
                .padding(.trailing, 50)
            HStack(spacing: 20){
                Button{
                    //23
                }label: {
                    VStack{
                        Image(systemName: "calendar")
                            .font(.title)
                        Text("Agendar")
                    }
                }
                .padding(12)
                .padding(.horizontal, 35)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Button{
                    //23
                }label: {
                    VStack{
                        Image(systemName: "safari")
                            .font(.title)
                        Text("Site")
                    }
                }
                .padding(12)
                .padding(.horizontal, 50)
                .background(Color("ButtonColorLocal"))
                .foregroundColor(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.top)
            
            Text("Informações do centro de serviço")
                .frame(width: 350 ,alignment: .leading)
                .padding(.trailing)
                .font(.title3)
                .bold()
                .padding(.top , 25)
            
            
            List{
                fastShopSheetList(nome: "Telefone", num: "11 94033-2153")
                fastShopSheetList(nome: "Telefone", num: "11 3033-5780")
                fastShopSheetList(nome: "Site", num: "wecare.repair")
                VStack(alignment: .leading){
                    HStack{
                        Text("Endereço")
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "arrow.triangle.turn.up.right.circle.fill")
                            .foregroundColor(.blue)
                    }
                    Text("Av. Higienópolis, 698 Lj 133 134")
                    Text("São Paulo SP")
                    Text("01238-000")
                }
                
            }
            List{
                VStack{
                    HStack{
                        Image(systemName: "apple.logo")
                        Text("Centro de Serviço Autorizado (ASP)")
                    }
                    Text("Esse Local é certificado pela Apple para oferecer serviços e reparos de alta qualidade.")
                        .font(.system(size: 14))
                }
            }
            .frame(height: 100)
            
            Spacer()
        }
        
        
    }
}

struct fastShopSheet_Previews: PreviewProvider {
    static var previews: some View {
        fastShopSheet()
    }
}
