//
//  Users.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation
import CoreData
fileprivate func UsersEntitiyDescription() -> NSEntityDescription
{
     return (NSEntityDescription.entity(forEntityName: "Users", in: TeamsDataStoreContext()))!
}

func UsersEnitityManagedObject() -> NSManagedObject
{
  return NSManagedObject(entity: UsersEntitiyDescription(), insertInto: TeamsDataStoreContext()) as NSManagedObject
}

//struct Users {
//    var userName : String
//    var password : String
//    init(userName : String, password : String) {
//        self.userName = userName
//        self.password = password
//    }
//
//}

