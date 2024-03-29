//
//  Draft.swift
//  todoApp
//
//  Created by kosuke.miyake on 2024/02/27.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TextField("タスクを入力してください。", text: $taskTitle)
            .onSubmit {
                self.createTask()
                self.userData.isEditing = false
            }
    }
    func createTask() {
        let newTask = Task(title: self.taskTitle, checked: false )
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}



#Preview {
    Draft()
}
