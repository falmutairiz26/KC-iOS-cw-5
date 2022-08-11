//
//  ContentView.swift
//  myGrocery cw 5
//
//  Created by Fatemah Almutairi on 10/08/2022.
//

import SwiftUI
struct ContentView: View {
    @State var grocery = ["haribo", "kinder", "marai", "pringles", "gum"]
    @State var item = ""
    var body: some View {
        VStack{
        List(grocery, id:\.self){ i in
            HStack{
            Image(i)
                .resizable()
                .frame(width: 70, height: 70)
                Text(i.capitalized)
                
            }
            }
            HStack{
                Spacer()
                Button {
                    grocery.append(item)
                } label: {
                    Image(systemName:"plus.app.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                }

                Spacer()

                TextField("add item", text: $item)
                    .padding()
                    .frame(width: 250, height: 50)
                    .background(Color.gray.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Spacer()

                
                Button {
                    grocery.remove(at: 0)
                } label: {
                    Image(systemName:"minus.square.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                }
                Spacer()

            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
