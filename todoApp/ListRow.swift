//
//  ListRow.swift
//  todoApp
//
//  Created by kosuke.miyake on 2024/02/27.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool
    
    var body: some View {
        HStack {
            if isCheck {
                Text("☑️")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            } else {
                Text("🔳")
                Text(task)
            }
            
        }
    }
}

#Preview {
    ListRow(task: "hoge", isCheck: true)
}
