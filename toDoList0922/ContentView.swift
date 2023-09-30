//
//  ContentView.swift
//  toDoList0922
//
//  Created by Miyuki Kikuchi on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State var toDo = ""
    @State var toDoList = [String]()
    @State private var selection: String?
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Spacer()
                Text("What to do today")
                TextField("Enter what to do.", text: $toDo, onCommit: {
                    toDoList.append(toDo)
                })
                .onSubmit {
                    toDo = ""
                }
                NavigationView{
                    List {
                        ForEach(toDoList, id: \.self) { item in
                            Text(item)
                            
                        }
                    }
                    
                } .toolbar {
                    EditButton()
                }
            }
            
            //                        .listStyle(InsetListStyle())
            //                        .navigationBarItems(trailing: EditButton())
            //.listRowBackground(Color(.systemMint).opacity(0.1))
            //  .ignoresSafeArea(.all)
            // .navigationTitle("What to do")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
