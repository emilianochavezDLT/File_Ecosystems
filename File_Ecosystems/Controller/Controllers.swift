//
//  Controllers.swift
//  File_Ecosystems
//
//  Created by Emiliano Chavez De La Torre on 1/7/24.
//

import Foundation


class EcosystemController: ObservableObject {
    
    var ecosystems: [Ecosystem] = []
    
    init() {
        loadEcosystems()
    }
    
    //This function contains a dummy list to show a basic ecosytem
    func loadEcosystems(){
        
        let file1 = File(file_Name: "WordDoc1", file_Path: "/Doc/Folder1/WordDoc1", file_Size: "125kb", file_Type: ".docx")
        
        let file2 = File(file_Name: "WordPDF", file_Path: "/Doc/Folder2/WordPDF", file_Size: "256kb", file_Type: ".pdf")
        
        let ecosystem1 = Ecosystem(title: "My First Ecosystem", file: [file1, file2], description: "Word Docs and PDF's")
        
        ecosystems.append(ecosystem1)
    }
    
    //The functions bellow are CRUD functions to create, read, update, and delete ecosystems.
    
   
    func get_Ecosystems(){
        
    }
    
    //This ecosystem lets users to maunally create thier own ecosystem
    func create_Ecosystem(title: String, files: [File], description: String){
        let new_Ecosystem = Ecosystem(title: title, file: files, description: description)
        ecosystems.append(new_Ecosystem)
        
    }
    
    func update_Ecosystem(Ecosystem: Ecosystem){
        
    }
    
    func delete_Ecosystem(Ecosystem: Ecosystem){
        
    }
    
    
    
    
}
