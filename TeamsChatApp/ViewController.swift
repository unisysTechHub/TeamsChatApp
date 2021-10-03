//
//  ViewController.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 20/04/21.
//

import UIKit

class ViewController: UIViewController {
    let bottomNavBarheight  =  20
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configureSendMessageView()
      
        // Do any additional setup after loading the view.
    }

    func configureSendMessageView()
    {
        let sendMessageView = UILabel()
        sendMessageView.translatesAutoresizingMaskIntoConstraints = false
        sendMessageView.text = "Test"
        self.view.addSubview(sendMessageView)
        let layoutGuide = UILayoutGuide()
        self.view.addLayoutGuide(layoutGuide)
        sendMessageView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor, constant: 16).isActive = true
        sendMessageView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor, constant: 16).isActive = true
        sendMessageView.topAnchor.constraint(equalTo: layoutGuide.topAnchor, constant: 16).isActive = true
        
//        let headerLabel = UILabel()
//        headerLabel.text = "Default header label"
//  // Header Label font
//  headerLabel.layoutMargins = .init(top: 4, left: 4, bottom: 4, right: 4)
//  headerLabel.font = UIFont.preferredFont(forTextStyle: .headline)
//  headerLabel.adjustsFontForContentSizeCategory = true
//
//
//  // attache icon
//        let icon = UIImage(systemName: "pencil")
//        let attachIcon = UIButton()
//        attachIcon.setImage(icon, for: .normal)
//
//        headerLabel.translatesAutoresizingMaskIntoConstraints = false
//        attachIcon.translatesAutoresizingMaskIntoConstraints = false
//        sendMessageView.addSubview(headerLabel)
//       // sendMessageView.addSubview(attachIcon)
//
//
//         let sendIcon = UIImage(systemName: "pencil")
//         let sendButton = UIButton()
//         sendButton.setImage(sendIcon, for: .normal)
//        sendButton.translatesAutoresizingMaskIntoConstraints = false
//  // header label contraints
//        headerLabel.leadingAnchor.constraint(equalTo: sendMessageView.leadingAnchor, constant: 16).isActive = true
//        headerLabel.trailingAnchor.constraint(equalTo: sendMessageView.trailingAnchor, constant: -(icon!.size.width + CGFloat(9))).isActive = true
        
// // expandIcon contriants
//        sendButton.trailingAnchor.constraint(equalTo: sendMessageView.trailingAnchor, constant: 8).isActive = true
//        sendButton.leadingAnchor.constraint(equalTo: sendMessageView.trailingAnchor,constant: -(sendIcon!.size.width + CGFloat(8))).isActive = true
//
        
    }
    func addBottomNavBarAsSubView() {
        let navBar =  UINavigationBar(frame: CGRect(x: 0, y: screen.height - CGFloat(bottomNavBarheight), width: screen.width, height: CGFloat(bottomNavBarheight)))
        
        
        let navBarItem1 = UIBarButtonItem(image: UIImage(systemName: "pencil"), style: .done, target: nil, action:#selector(onInviteFriendClicked))
        let navBarItem2 = UIBarButtonItem(image: UIImage(systemName: "pencil"), style: .done, target: nil, action:#selector(onInviteFriendClicked))
    }

  @objc  func onInviteFriendClicked() {
        
    }
}

