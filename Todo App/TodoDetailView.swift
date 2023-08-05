//
//  TodoDetail.swift
//  Todo App
//
//  Created by James Toh on 5/8/23.
//

import SwiftUI

struct TodoDetailView: View {
    
    @State var todo = Todo(title: "Do up this view", subtittle: "Theres nothing here yet")
    
    var body: some View {
        Form{
            Section("Todo"){
                TextField("tittle", text: $todo.title)
                TextField("subtittle", text: $todo.subtittle)
                Toggle("Completed", isOn:$todo.isCompleted)
            }
        }
        .navigationTitle("Todo Detail")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView()
    }
}