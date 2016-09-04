//
//  ViewController.swift
//  TestChatViewController
//
//  Created by David on 2016/9/4.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

class ViewController: DLMessagesViewController {
	
	var messages: [DLChatMessage] = []

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		userID = "2"
		delegate = self
		
		let a = DLChatMessage(senderID: "1", senderAvatarImage: nil, content: "yoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyoyo")
		let b = DLChatMessage(senderID: "2", senderAvatarImage: nil, content: "hey", type: .Text)
		messages.appendContentsOf([a,a,a,a,a,a,a,a,a,a])
		messages.appendContentsOf([b,b,b])
	}
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return messages.count
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let message = messages[indexPath.row]
		let cell = getMessageCell(tableView, indexPath: indexPath, message: message)
		return cell
	}
	
}

extension ViewController : DLMessagesViewControllerDelegate {
	
	func DLMessagesViewControllerDidClickedCameraButton() {
		print(#function)
	}
	
	func DLMessagesViewControllerDidTapOnBubbleTableView() {
		print(#function)
	}
	
	func DLMessagesViewController(didClickedSendMessageButton message: DLChatMessage) {
		messages.append(message)
		messageRecieved()
	}
	
	
	
}