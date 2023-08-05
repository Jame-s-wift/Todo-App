//
//  ContentView.swift
//  Todo App
//
//  Created by James Toh on 30/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "Buy 20kg Nutella", isCompleted: true),
        Todo(title: "Eat 20kg Nutella", subtittle: "NOM NOM NOM"),
        Todo(title: "Regret life decisions"),
    ]
    
    var body: some View {
        NavigationStack {
            List($todos, id: \.id, editActions: .all) { $todo in
                NavigationLink{
                    TodoDetailView(todo: $todo)
                } label: {
                    ZStack{
                        HStack{
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    todo.isCompleted.toggle()
                                }
                            
                            VStack(alignment: .leading){
                                Text(todo.title)
                                    .strikethrough(todo.isCompleted)
                                if !todo.subtittle.isEmpty {
                                    Text(todo.subtittle)
                                        .font(.footnote)
                                        .foregroundStyle(.gray)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Todos")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
