import SwiftUI
struct SuporteView: View {
  @State var searchtext = ""
    @State private var isPresented = false
    @State private var isPresent = false
    @State private var isPresen = false
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack {
          Divider()
            .frame(width: 360)
          HStack(spacing: -10) {
            Text("Meus dispositivos")
              .bold()
              .font(.title3)
              .padding()
            Image(systemName: "chevron.right")
              .bold()
              .foregroundColor(.gray)
              .font(.system(size: 17))
            Spacer()
          }
          .onTapGesture {
              isPresented.toggle()
          }
          .padding(.bottom, -12)
          ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              MeusDispositivosFrames(nomeip: "Gustavo", imagemip: "iphone", nomeipad: "iPhone")
              MeusDispositivosFrames(nomeip: "Gustavo", imagemip: "ipad", nomeipad: "iPad")
            }
            .padding(.horizontal)
          }
          Divider()
            .frame(width: 360)
            .padding(.top, 10)
          VStack {
            HStack {
              Text("Ferramentas de suporte")
                .bold()
                .font(.title3)
                .padding()
                .padding(.top, -8)
              Spacer()
            }
            FerramentasDeSuporte(opcao: "Gerenciar assinaturas", imagem: "calendar.badge.plus")
              .padding(.top, -14)
          }
          Divider()
            .frame(width: 360)
            .padding(.top, 10)
          VStack {
            HStack(spacing: -10) {
              Text("Meus serviços")
                .bold()
                .font(.title3)
                .padding()
              Image(systemName: "chevron.right")
                .bold()
                .foregroundColor(.gray)
                .font(.system(size: 17))
              Spacer()
            }
            .onTapGesture {
                isPresent.toggle()
            }
            ScrollView(.horizontal, showsIndicators: false) {
              HStack {
                MeusServicosFrames(nomeicloud: "iCloud+", imagemip: "icloud", nomeipad: "")
                music(nomeicloud: "Apple Music", imagemip: "music", nomeipad: "")
              }
              .padding(.horizontal)
            }
            Divider()
              .frame(width: 360)
              .padding(.top, 16)
            .padding(.top, -7)
          }
          Spacer()
        }
        .searchable(text: $searchtext, prompt: "Conte o que está acontecendo")
        .navigationTitle("Suporte")
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button {
              print("ok")
            } label: {
              Image("memoji")
                .resizable()
                .frame(width: 40, height: 40)
                .scaledToFit()
                .clipShape(Circle())
                .onTapGesture {
                    isPresen.toggle()
                }
            }
          }
        }
        .sheet(isPresented: $isPresented){
            meusDispView()
        }
        .sheet(isPresented: $isPresent){
            meusServicosView()
        }
        .sheet(isPresented: $isPresen){
            sheetProfile()
        }
      }
    }
  }
}
struct SuporteView_Previews: PreviewProvider {
  static var previews: some View {
    SuporteView()
  }
}









