//
//  ContentView.swift
//  NotesApp
//
//  Created by Rakhat Dossanbayev on 12.06.2026.
//

import SwiftUI


struct Note: Identifiable {
    let id = UUID()
    var title: String
    var text: String
}

struct ContentView: View {
    
    
@State private var notes: [Note] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(notes) { note in
                    Text(note.title)
                }
            }
            .navigationTitle("Notes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        notes.append(Note(title: "Новая заметка", text: ""))
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
