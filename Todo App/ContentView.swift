//
//  ContentView.swift
//  Todo App
//
//  Created by James Toh on 30/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
    Todo(title: "Buy 20kg Nutella"),
    Todo(title: "Eat 20kg Nutella")
    ]
    
    var body: some View {
        List(todos) { todo in
            
            Text(todo.title)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
