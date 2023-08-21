import SwiftUI
struct FerramentasDeSuporte: View {
  var opcao: String
  var imagem: String
  var body: some View {
    VStack {
      ZStack {
        Rectangle()
          .frame(width: 360, height: 80)
          .foregroundColor(.gray)
          .opacity(0.1)
          .cornerRadius(12)
        HStack {
          Image(systemName: imagem)
            .frame(width: 80, height: 80)
            .padding(.trailing, -10)
            .symbolRenderingMode(.multicolor)
            .font(.system(size: 35))
          Text("\(opcao)")
            .bold()
          Spacer()
        }
      }
      .frame(width: 350, height: 80)
      ZStack {
        Rectangle()
          .frame(width: 360, height: 80)
          .foregroundColor(.gray)
          .opacity(0.1)
          .cornerRadius(12)
        HStack {
          Image(systemName: "rectangle.and.pencil.and.ellipsis")
            .frame(width: 80, height: 80)
            .padding(.trailing, -10)
            .foregroundStyle(Color.blue, Color.gray)
            .font(.system(size: 29))
          Text("Redefinir a senha")
            .bold()
          Spacer()
        }
      }
      .frame(width: 350, height: 80)
      ZStack {
        Rectangle()
          .frame(width: 360, height: 80)
          .foregroundColor(.gray)
          .opacity(0.1)
          .cornerRadius(12)
        HStack {
          Image(systemName: "apple.logo")
            .renderingMode(.original)
            .foregroundColor(.red)
            .brightness(-0.2)
            .font(.system(size: 35))
            .frame(width: 80, height: 80)
            .padding(.trailing, -10)
          Text("Verificar a cobertura")
            .bold()
          Spacer()
        }
      }
      .frame(width: 350, height: 80)
    }
  }
}
struct FerramentasDeSuporte_Previews: PreviewProvider {
  static var previews: some View {
    FerramentasDeSuporte(opcao: "Gerenciar assinaturas", imagem: "calendar.badge.plus")
  }
}
