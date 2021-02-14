//
//  Item+CoreDataProperties.swift
//  CoreDataTests (iOS)
//
//  Created by Sam DuBois on 2/14/21.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var timestamp: Date?

}

extension Item : Identifiable {

}
