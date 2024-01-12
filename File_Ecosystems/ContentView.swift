//
//  ContentView.swift
//  File_Ecosystems
//
//  Created by Emiliano Chavez De La Torre on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        EcosystemView()
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        
        }
        .padding()
    }
}


struct EcosystemView: View {
    
    @StateObject var controller = EcosystemController()
    
    var body: some View {
        List(controller.ecosystems, id: \.title) { ecosystem in Text(ecosystem.title)
            ForEach(ecosystem.file, id: \.self) {file in Text(file.file_Name)}
        }
        .onAppear(){
            controller.loadEcosystems()
        }
    }
    
}


#Preview {
    ContentView()
}
