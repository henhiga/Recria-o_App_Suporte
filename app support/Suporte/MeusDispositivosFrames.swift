import SwiftUI
struct MeusDispositivosFrames: View {
  var nomeip: String
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
          Text("\(nomeip)'s \(nomeipad)")
            .bold()
            .font(.title3)
          Text("Este \(nomeipad) Pro")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .padding(5)
        .multilineTextAlignment(.center)
      }
      .padding(.top, 20)
    }
    .frame(width: 210, height: 190)
    .background(Color.gray.opacity(0.1))
    .cornerRadius(10)
  }
}
struct MeusDispositivosFrames_Previews: PreviewProvider {
  static var previews: some View {
    MeusDispositivosFrames(nomeip: "Henrique", imagemip: "iphone", nomeipad: "iPhone")
  }
}
