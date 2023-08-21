import SwiftUI
struct music: View {
  var nomeicloud: String
  var imagemip: String
  var nomeipad: String
  var body: some View {
    ZStack {
      VStack {
        Image(imagemip)
          .resizable()
          .scaledToFit()
          .frame(width: 83, height: 83)
          Text("\(nomeicloud)")
            .bold()
            .font(.title3)
        Spacer()
      }
      .padding(29)
    }
    .frame(width: 230, height: 200)
    .background(Color.gray.opacity(0.1))
    .cornerRadius(10)
  }
}
struct music_Previews: PreviewProvider {
  static var previews: some View {
    music(nomeicloud: "Apple Music", imagemip: "music", nomeipad: "")
  }
}
