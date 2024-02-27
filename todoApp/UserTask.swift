//
//  Task.swift
//  todoApp
//
//  Created by kosuke.miyake on 2024/02/27.
//

import SwiftUI

struct Task: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var checked: Bool
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
