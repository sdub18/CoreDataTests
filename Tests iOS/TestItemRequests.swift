//
//  TestItemRequests.swift
//  Tests iOS
//
//  Created by Sam DuBois on 2/14/21.
//

import XCTest
@testable import CoreDataTests

class TestItemRequests: XCTestCase {
    
    var persistanceController: PersistenceController!

    override func setUp() {
        super.setUp()
        persistanceController = PersistenceController.preview
    }
    
    override func tearDown() {
        super.tearDown()
        persistanceController = nil
    }
    
    func testAddItem() {
        let viewContext = persistanceController.container.viewContext
        
        let item = Item(context: viewContext)
        item.timestamp = Date()
        
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
        XCTAssertNotNil(item.timestamp)
    }

}
