//
//  MessageAttachements.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation
import CoreData
fileprivate func messageAttachmentsEntitiyDescription() -> NSEntityDescription
{
     return (NSEntityDescription.entity(forEntityName: "MessageAttachments", in: TeamsDataStoreContext()))!
}

func messageAttachmentsEnitityManagedObject() -> NSManagedObject
{
  return NSManagedObject(entity:messageAttachmentsEntitiyDescription(), insertInto: TeamsDataStoreContext()) as NSManagedObject
}

//struct Attachment {
//    var messageId : Date
//    var fileName : String
//    var filePath : String
//    var fileType : FileType
//    init(messageId : Date, fileName : String, filePath : String, fileType : FileType) {
//        self.messageId = messageId
//        self.fileName = fileName
//        self.filePath = filePath
//        self.fileType = fileType
//    }
//}
