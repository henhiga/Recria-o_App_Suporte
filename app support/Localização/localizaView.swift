//
//  localizaView.swift
//  app support
//
//  Created by Henrique on 14/08/23.
//

import SwiftUI

struct localizaView: View {
    @State private var isPresented = false
    @State private var isPresent = false
    var body: some View {
        NavigationStack{
            ZStack{
                mapaView()
                VStack{
                    Spacer()
                    HStack(){
                        Button{
                            isPresented.toggle()
                            isPresent.toggle()
                        }label: {
                            Image(systemName: "magnifyingglass")
                        }
                        .padding()
                        .background(Color("ButtonColorLocal"))
                        .foregroundColor(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        Button{
                            isPresent.toggle()
                        }label: {
                            Image(systemName: "list.bullet")
                            Text("Mostrar lista")
                        }
                        .padding()
                        .padding(.horizontal,70)
                        .background(Color("ButtonColorLocal"))
                        .foregroundColor(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            .sheet(isPresented: $isPresented){
                sheetSearchLocal()
            }
            .navigationTitle("Locais de reparo")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $isPresent){
                sheetLocaisProx()
                    .presentationDetents([.medium, .large, .fraction(0.75)])
                
            }
        }
    }
}

struct localizaView_Previews: PreviewProvider {
    static var previews: some View {
        localizaView()
    }
}
