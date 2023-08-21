//
//  sheetProfile.swift
//  app support
//
//  Created by Henrique on 16/08/23.
//

import SwiftUI

struct sheetProfile: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
            VStack{
                Image("memoji")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                Text("Henrique Higa")
                    .font(.largeTitle)
                    .bold()
                Text(verbatim: "NuncaFoiSorteSempreFoiDeus@gmail.com")
                    .foregroundColor(.gray)
                Spacer()
            }
            .toolbar{
                Button("OK"){
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct sheetProfile_Previews: PreviewProvider {
    static var previews: some View {
        sheetProfile()
    }
}
