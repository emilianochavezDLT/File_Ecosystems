//
//  Models.swift
//  File_Ecosystems
//
//  Created by Emiliano Chavez De La Torre on 1/7/24.
//


import Foundation

//The hashable is just a protocol, that lets the type Ecosystem to
//be part of a dictionary. There are other protocols to look up as well.
struct Ecosystem: Hashable {
    
    var id = UUID()
    var title: String
    var file: [File]
    var description : String
    
}

struct File: Hashable {
    
    var file_Name : String
    var file_Path : String
    var file_Size : String
    var file_Type : String
}
