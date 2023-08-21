//
//  ContentView.swift
//  app support
//
//  Created by Henrique on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    SuporteView()
                        .tabItem {
                            Label("Suporte", systemImage: "square.grid.2x2.fill")
                        }

                    localizaView()
                        .tabItem {
                            Label("Localizações", systemImage: "mappin.and.ellipse")
                        }
                    atividadeView()
                        .tabItem {
                            Label("Atividade", systemImage: "clock.fill")
                }

                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
