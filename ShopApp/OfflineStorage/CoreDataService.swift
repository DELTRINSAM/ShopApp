//
//  CoreDataService.swift
//  ShopApp
//
//  Created by Deltrin Sam on 08/08/24.
//

//import Foundation
//import CoreData
//
//class CoreDataService: OfflineStorageServiceProtocol {
//    static let shared = CoreDataService()
//    
//    private let persistentContainer: NSPersistentContainer
//    
//    private init() {
//        persistentContainer = NSPersistentContainer(name: "ShopDataModel")
//        persistentContainer.loadPersistentStores { description, error in
//            if let error = error {
//                fatalError("Failed to load Core Data stack: \(error)")
//            }
//        }
//    }
//    
//    private var context: NSManagedObjectContext {
//        return persistentContainer.viewContext
//    }
//    
//    func fetchSections() -> [Section] {
//        let fetchRequest: NSFetchRequest<CDSection> = CDSection.fetchRequest()
//        
//        do {
//            let cdSections = try context.fetch(fetchRequest)
//            return cdSections.map { cdSection in
//                // Convert CDSection to Section
//                Section(
//                    id: cdSection.id ?? "",
//                    type: cdSection.type ?? "",
//                    items: cdSection.items as? [AnyCodable] ?? []
//                )
//            }
//        } catch {
//            print("Failed to fetch sections: \(error)")
//            return []
//        }
//    }
//    
//    func saveSections(_ sections: [Section]) {
//        clearSections() // Clear existing data first
//        
//        for section in sections {
//            let cdSection = CDSection(context: context)
//            cdSection.id = section.id
//            cdSection.type = section.type
//            cdSection.items = section.items
//            
//            // Add additional attributes if needed
//        }
//        
//        do {
//            try context.save()
//        } catch {
//            print("Failed to save sections: \(error)")
//        }
//    }
//    
//    private func clearSections() {
//        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = CDSection.fetchRequest()
//        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
//        
//        do {
//            try context.execute(deleteRequest)
//        } catch {
//            print("Failed to clear sections: \(error)")
//        }
//    }
//}
