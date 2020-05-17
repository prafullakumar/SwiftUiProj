import SwiftUI

struct ContentView: View {
    private static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    let likes: UInt = 10
    let publishedAt = Date()
    let author = "Jhon Doe"
    
    var body: some View {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("\(publishedAt, formatter: Self.formatter)")
                            .foregroundColor(.secondary)
                            .font(.caption)

                        Spacer()

                        Text("Author_Name \(self.author)")
                            .foregroundColor(.secondary)
                            .font(.caption).onTapGesture {
                                
                              let likes: UInt = 10
                              print(LocalizedStringKey("\(likes) Like(s)"))
                              let like = 10
                              print(LocalizedStringKey("\(like) Like(s)"))
                        }
                    }
                    
                    Text("Quotes")
                        .font(.headline)

                    Text("Content")
                        .font(.body)
                    Text("\(likes) Like(s)")
                        .font(.subheadline)
                    
                }.frame(idealHeight: .greatestFiniteMagnitude)
                    .padding()
            }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

