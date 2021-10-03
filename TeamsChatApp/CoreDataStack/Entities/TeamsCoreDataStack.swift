//
//  TeamsCoreDataStack.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation
import CoreData
import UIKit

func TeamsDataStoreContext() -> NSManagedObjectContext
{
    return  ((UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext)!
    
    

}
