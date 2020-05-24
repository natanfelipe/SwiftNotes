//
//  TaskViewController.swift
//  SwiftNotes
//
//  Created by Natan Brito on 24/05/20.
//  Copyright © 2020 Natan Brito. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet weak var noteTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        
        if let newNote = noteTextField.text {
            let noteUserDefaults = NotesUserDefaults()
            noteUserDefaults.addNote(note: newNote)
            noteTextField.text = ""
        }
        
    }
    
    
    /**/
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
