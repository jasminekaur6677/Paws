//
//  Pets.swift
//  Paws
//
//  Created by Jasmine Kaur on 12/04/26.
//

import Foundation
import SwiftData

@Model
final class Pet {
    var name: String
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, photo: Data? = nil) {
        self.name = name
        self.photo = photo
    }
}

extension Pet {
    @MainActor
    static var preview: ModelContainer {
        
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        var container = try! ModelContainer(for: Pet.self, configurations: configuration)
        container.mainContext.insert(Pet(name: "Ottis"))
        container.mainContext.insert(Pet(name: "Luna"))
        container.mainContext.insert(Pet(name: "Lily"))
        container.mainContext.insert(Pet(name: "Max"))
        container.mainContext.insert(Pet(name: "Ollie"))
        container.mainContext.insert(Pet(name: "Thunder"))
        container.mainContext.insert(Pet(name: "Maggie"))
        container.mainContext.insert(Pet(name: "simba"))
        return container
    }
}
