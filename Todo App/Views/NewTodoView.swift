//
//  NewTodoView.swift
//  Todo App
//
//  Created by James Toh on 5/8/23.
//

import SwiftUI

struct NewTodoView: View {
    
    @Binding var sourceArray: [Todo]
    @State private var todoTitle = ""
    @State private var todoSubtitle = ""
    @State private var todoDeadline = Date()
    @Binding var isPresented: Bool
    
    var body: some View {
        Form{
            Section("info"){
                TextField("Title", text: $todoTitle)
                TextField("Subtitle", text: $todoSubtitle)
                DatePicker("Deadline", selection: $todoDeadline)
            }
            
            Section("Actions"){
                Button("Save"){
                    sourceArray.append(Todo(title: todoTitle, subtittle: todoSubtitle, deadline: todoDeadline))
                    isPresented = false
                }
                .foregroundColor(.blue)
                
                Button("Cancel", role: .destructive){
                    isPresented = false
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(sourceArray: .constant([]), isPresented: .constant(true))
    }
}
