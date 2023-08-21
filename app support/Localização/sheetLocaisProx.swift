//
//  sheetLocaisProx.swift
//  app support
//
//  Created by Henrique on 14/08/23.
//

import SwiftUI

struct sheetLocaisProx: View {
    @State private var isPresented = false
    @State private var isPresent = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack(){
                Image(systemName: "location.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                VStack(alignment: .leading){
                    HStack{
                        Text("Locais próximos")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Button{
                            presentationMode.wrappedValue.dismiss()
                        }label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.gray)
                                .font(.title2)
                        }
                        .padding()
                    }
                    Button("Editar busca"){
                        isPresented.toggle()
                        
                    }.offset(y: -15)
                    
                }
            }
            .padding()
            Button("Produto"){
                
            }
            .padding(.horizontal, 20.0)
            .padding(.vertical, 8)
            .overlay(RoundedRectangle(cornerRadius: 30) .stroke(Color.gray))
            .padding(.leading, 20)
            Divider()
                .padding(.top, 10)
            
            List{
                VStack(spacing: 10){
                    HStack{
                        Text("Fast Shop By WeCare Shopping pátio Higienópolis")
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(width: 250, alignment: .leading)
                        Spacer()
                        Text("900 m")
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                            .padding(.bottom, 40)
                            .frame(height: 20)
                    }
                    Text("Av. Higienópolis, 698 Lj 133 134, São Paulo")
                        .font(.callout)
                        .frame(width: 350, alignment: .leading)
                }
            }.listStyle(GroupedListStyle())
                .onTapGesture {
                    isPresent.toggle()
                }
            
            
            
            
            
            
            Spacer()
        }
        .sheet(isPresented: $isPresent){
            fastShopSheet()
                .presentationDetents([.medium, .large, .fraction(0.75)])
        }
        .sheet(isPresented: $isPresented){
                    sheetSearchLocal()
                }
            
        }
}

struct sheetLocaisProx_Previews: PreviewProvider {
    static var previews: some View {
        sheetLocaisProx()
    }
}
