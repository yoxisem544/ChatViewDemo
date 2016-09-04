//
//  DLChatMessage.swift
//  TestChatViewController
//
//  Created by David on 2016/9/4.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

public enum MessageType {
	case Text
	case Image
}

public struct DLChatMessage {
	
	var senderID: String
	var senderAvatarImage: UIImage?
	var content: String?
	let type: MessageType
	
	init(senderID: String, senderAvatarImage: UIImage?, content: String?, type: MessageType = .Text) {
		self.senderID = senderID
		self.senderAvatarImage = senderAvatarImage
		self.content = content
		self.type = type
	}
}
