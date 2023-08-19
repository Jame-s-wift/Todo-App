//
//  ContentView.swift
//  Todo App
//
//  Created by James Toh on 30/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
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
                    TodoRowView(todo: $todo)
                }
            }
            .navigationTitle("Todos")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        isPresented = true
                    }label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isPresented) {
                NewTodoView(sourceArray: $todos, isPresented: $isPresented)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
