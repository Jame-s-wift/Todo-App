//
//  TodoRowView.swift
//  Todo App
//
//  Created by James Toh on 5/8/23.
//

import SwiftUI

struct TodoRowView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
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

struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoRowView(todo: .constant(Todo(title: "fake title todo")))
    }
}
