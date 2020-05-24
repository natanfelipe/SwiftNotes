//
//  NoteListViewController.swift
//  SwiftNotes
//
//  Created by Natan Brito on 24/05/20.
//  Copyright © 2020 Natan Brito. All rights reserved.
//

import UIKit

class NoteListViewController: UITableViewController {
    
    var notes: [String] = []
    let noteUserDefaults = NotesUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getNotes()
    }
    
    func getNotes() {
        notes = noteUserDefaults.listNotes()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            noteUserDefaults.deleteNote(index: indexPath.row)
            getNotes()
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let noteCell = "noteCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: noteCell, for: indexPath)
        cell.textLabel?.text = notes[indexPath.row]
        
        return cell
    }
    
}
