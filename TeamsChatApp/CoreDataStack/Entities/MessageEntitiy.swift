//
//  Message.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation
import CoreData
fileprivate func messageEntitiyDescription() -> NSEntityDescription
{
     return (NSEntityDescription.entity(forEntityName: "ChatMessage", in: TeamsDataStoreContext()))!
}

func messageEnitityManagedObject() -> NSManagedObject
{
  return NSManagedObject(entity:messageEntitiyDescription(), insertInto: TeamsDataStoreContext()) as NSManagedObject
}

//struct Message {
//    var id : Date
//    var text : String?
//    var type : MessageType
//    var sender : User
//    var attachements : [Attachment]?
//    init(id : Date, text : String?, type : MessageType,
//         sender : User, attachements : [String]?) {
//        self.id = messageId
//        self.text = message
//        self.type = messageType
//        self.sender = messageSender
//        self.attachements = messageAttachements
//        
//    }
//   
//}
//
//
