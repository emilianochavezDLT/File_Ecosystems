//
//  PersistanceController.swift
//  File_Ecosystems
//
//  Created by Emiliano Chavez De La Torre on 1/12/24.
//

import Foundation
import CoreData

/*The persistance collter is a helps us load and manage our core data
 configuration from our Ecosystem Models*/
struct PersistanceController{
    
    //A singleton(the static keyword helps us to use the singleton pattern , which is the PersistanceController.functionName) for our entire app to use, which allows
    //us to access the Core Data Stack from anywhere in our app.
    static let shared = PersistanceController()
    
    //Storage for Core Data
    let container: NSPersistentContainer
    
    // An initializer to load Core Data, optionally able
    // to use an in-memory store.
    init(inMemory: Bool = false) {
        self.container = NSPersistentContainer(name: "Ecosystem_Models")
        
        //This is important because we are configuring core data to
        //Save the information in memenroy rather than on disk
        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                // Handle the error, for example, by logging it or displaying an alert
                fatalError("Unresolved error \(error), \(error.userInfo), in persistance controller file")
            }
        }
    }
    
    //We would want to create a preview of ecosystem just for our use from the models/entities that we have created
    static var preview: PersistanceController = {
        //Meaning that this preview is in memoery rather than on disk
        let controller = PersistanceController(inMemory: true)
        
        //Creating a preview ecosystem
        let context = controller.container.viewContext
        
        //Creat the preview here...
        
        return controller
    }()
    
}
