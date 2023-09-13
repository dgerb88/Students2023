//
//  ContentView.swift
//  Students
//
//  Created by Andrew R Madsen on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    let students: [Student]
    var body: some View {
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
        return ForEach(students, id: \.self) { student in
            ScrollView {
                LazyVGrid(columns: columns) {
                    Text("ryan is awesome!!!!!")
                    StudentCell(student: student)
                        .frame(width: 150, height: 150)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(students: Student.allStudents)
    }
}
