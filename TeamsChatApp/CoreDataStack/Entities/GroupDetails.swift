//
//  GroupDetails.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation
import CoreData
fileprivate func GroupDetailsEntitiyDescription() -> NSEntityDescription
{
     return (NSEntityDescription.entity(forEntityName: "Group", in: TeamsDataStoreContext()))!
}

func GroupEnitityManagedObject() -> NSManagedObject
{
  return NSManagedObject(entity: GroupDetailsEntitiyDescription(), insertInto: TeamsDataStoreContext()) as NSManagedObject
}

//struct Group {
//    var groupName : String
//    var groupId : String
//    var msgList : [Message]
//    init(groupName : String, groupId : String) {
//        self.groupName = groupName
//        self.groupId = groupId
//    }
//}
//
