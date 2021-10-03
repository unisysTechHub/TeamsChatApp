//
//  Message.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 26/04/21.
//

import Foundation

enum MessageType {
    case message
    case messageWithAttachments
}
enum FileType : String, RawRepresentable {
    case pdf = "pdf"
    case jpeg = "jpeg"
    case png = "png"
    case doc = "doc"
    case docx = "docx"
    case pages = "pages"
    
}

struct Message {
     
    var message : String
    var mesageType : MessageType
    var attachmetns : [Attachment]?
    init( message : String, messageType : MessageType, files : [Attachment]?) {
        self.message = message
        self.mesageType = messageType
        self.attachmetns = files
    }
}

struct Attachment {
    var fileName : String
    var fileType : FileType
    var filePath : String
    init(fileName : String, fileType : FileType, filePath : String) {
        self.fileName = fileName
        self.fileType = fileType
        self.filePath = filePath
        
    }
}
