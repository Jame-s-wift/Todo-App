//
//  Todo.swift
//  Todo App
//
//  Created by James Toh on 30/7/23.
//

import Foundation

struct Todo: Identifiable { 
    
    var id = UUID() // Universally Unique Identifiable
    var title: String
    var subtittle = ""
    var isCompleted = false
    
}
