import SwiftUI

struct ContentView: View {
    
    @State var color1: Color = .purple
    @State var color2: Color = .clear
    
    
    var body: some View { 
        VStack {
            HStack {
                Image("me")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .padding()
                Text("Alex Geibel")
                    .font(.custom("Copperplate", size: 40))
            }
            .frame(width: 400, height: 150)
            .shadow(radius:10)
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(Color.black, lineWidth: 4)
                .frame(width: 450, height: 50)
                .shadow(radius: 1)
                .overlay(
                    Text("About me")
                        .fontWeight(.bold)
                )
                .padding()
            Text("Junior | 2025Q")
                .font(.headline)
            Text("Interesting Fact: I have been to and stayed in all the New England states except Vermont")
                .frame(width: 400)
                .font(.headline)
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(Color.black, lineWidth: 4)
                .frame(width: 450, height: 50)
                .shadow(radius: 1)
                .overlay(
                    Text("Clubs and activities I do")
                        .fontWeight(.bold)
                )
                .padding()
            Text("Haverford Sports Media Tech Director")
            Text("Yearbook Club Photographer")
            Text("Stage Crew")
            Text("Tech Help Desk")
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(Color.black, lineWidth: 4)
                .frame(width: 450, height: 50)
                .shadow(radius: 1)
                .overlay(
                    Text("Color Changer")
                        .fontWeight(.bold)
                )
                .padding()
            
            Picker("What is your favorite color?", selection: $color1) {
                Text("Red").tag(Color.red)
                Text("Orange").tag(Color.orange)
                Text("Yellow").tag(Color.yellow)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Indigo").tag(Color.indigo)
                Text("Purple").tag(Color.purple)
                Text("Clear").tag(Color.clear)
            }
            .frame(width: 450)
            .pickerStyle(.segmented)
            Picker("What is your favorite color?", selection: $color2) {
                Text("Red").tag(Color.red)
                Text("Orange").tag(Color.orange)
                Text("Yellow").tag(Color.yellow)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Indigo").tag(Color.indigo)
                Text("Purple").tag(Color.purple)
                Text("Clear").tag(Color.clear)
            }
            .frame(width: 450)
            .pickerStyle(.segmented)
//            HStack {
//                Button("Background 1") {
//                    color1 = .blue
//                }
//                .padding()
//                .foregroundColor(.black)
//                .fontWeight(.bold)
//                Button("Background 2"){
//                    color1 = .purple
//                }
//                .foregroundColor(.black)
//                .fontWeight(.bold)
//            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.linearGradient(colors: [color2, color1], startPoint: UnitPoint(x: 0, y:1), endPoint: UnitPoint(x: 1, y: 0)))
    }
}
