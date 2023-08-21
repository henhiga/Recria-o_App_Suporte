import SwiftUI
struct MeusServicosFrames: View {
  var nomeicloud: String
  var imagemip: String
  var nomeipad: String
  var body: some View {
    ZStack {
      VStack {
        Image(imagemip)
          .resizable()
          .scaledToFit()
          .frame(width: 100, height: 100)
        VStack {
          Text("\(nomeicloud)")
            .bold()
            .font(.title3)
          Text("49,91 GB de 200 \n GB usados")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .multilineTextAlignment(.center)
      }
//      .padding(.top, )
    }
    .frame(width: 230, height: 200)
    .background(Color.gray.opacity(0.1))
    .cornerRadius(10)
  }
}
struct MeusServicosFrames_Previews: PreviewProvider {
  static var previews: some View {
    MeusServicosFrames(nomeicloud: "iCloud+", imagemip: "icloud", nomeipad: "")
  }
}
