//
//  UserGroups.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation
import CoreData
fileprivate func UserGroupsEntitiyDescription() -> NSEntityDescription
{
     return (NSEntityDescription.entity(forEntityName: "UserGroups", in: TeamsDataStoreContext()))!
}

func UserGroupsEnitityManagedObject() -> NSManagedObject
{
  return NSManagedObject(entity: UserGroupsEntitiyDescription(), insertInto: TeamsDataStoreContext()) as NSManagedObject
}

//struct UserGroups {
//    var userName : String
//    var groups : [Group]
//    init(userName : String, groups : [Group]) {
//        self.userName = userName
//        self.groups = groups
//    }
//
//}

