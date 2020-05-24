//
//  NotesUserDefaults.swift
//  SwiftNotes
//
//  Created by Natan Brito on 24/05/20.
//  Copyright © 2020 Natan Brito. All rights reserved.
//

import UIKit

class NotesUserDefaults {
    
    var notes: [String] = []
    let key: String = "notesKey"
            
    func addNote(note: String) {
        notes = listNotes()
        notes.append(note)
        UserDefaults.standard.set(notes, forKey: key)
    }
    
    func listNotes() -> Array<String> {
        let data = UserDefaults.standard.object(forKey: key)
        if data != nil {
            return data as! Array<String>
        }
        
        return []
    }
    
    func deleteNote(index: Int) {
        notes = listNotes()
        notes.remove(at: index)
        UserDefaults.standard.set(notes, forKey: key)
    }
    
}
