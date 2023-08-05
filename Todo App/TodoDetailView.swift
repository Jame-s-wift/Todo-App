//
//  TodoDetail.swift
//  Todo App
//
//  Created by James Toh on 5/8/23.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo : Todo
    
    var body: some View {
        Form{
            Section("Todo"){
                TextField("tittle", text: $todo.title)
                TextField("subtittle", text: $todo.subtittle)
                Toggle("Completed", isOn:$todo.isCompleted)
                DatePicker("Deadline", selection: $todo.deadline)
            }
        }
        .navigationTitle("Todo Detail")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo:
                .constant(Todo(title: "Do up this view", subtittle: "Theres nothing here yet!"))
        )
    }
}
