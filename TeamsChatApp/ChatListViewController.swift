//
//  ChatListViewController.swift
//  TeamsChatApp
//
//  Created by Ramesh kumar penta on 23/04/21.
//

import UIKit

class ChatListViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var messageView: UIStackView!
    
    @IBAction func pickImage(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let messageTextField = UITextField()
//        messageTextField.baseWritingDirection(for: UITextRange().start, in: .forward)
//        messageTextField.allowsEditingTextAttributes = true
//        messageTextField.borderStyle = .line
//        messageTextField.setNeedsFocusUpdate()
//        messageTextField.backgroundColor = .red
//        messageTextField.textColor = .black
//        messageTextField.translatesAutoresizingMaskIntoConstraints = false
//        messageTextField.text = "Ramesh "
//        messageView.addArrangedSubview(messageTextField)
//        let messageTextField1 = UITextField()
//        messageTextField1.baseWritingDirection(for: UITextRange().start, in: .forward)
//        messageTextField1.allowsEditingTextAttributes = true
//        messageTextField1.borderStyle = .line
//        messageTextField1.setNeedsFocusUpdate()
//        messageTextField1.backgroundColor = .red
//        messageTextField1.textColor = .black
//        messageTextField1.translatesAutoresizingMaskIntoConstraints = false
//        messageTextField1.text = "Ramesh "
//        messageView.addArrangedSubview(messageTextField1)
//        let containter = UILayoutGuide()
//        messageView.addLayoutGuide(containter)
//        messageTextField.leadingAnchor.constraint(equalTo: containter.leadingAnchor, constant: 4).isActive = true
//        messageTextField.topAnchor.constraint(equalTo: containter.topAnchor , constant: 4).isActive = true
//        messageTextField.rightAnchor.constraint(equalTo: containter.rightAnchor , constant: 4).isActive = true
//        messageTextField.widthAnchor.constraint(equalTo: self.messageView.widthAnchor , constant: 4).isActive = true
//
//        messageTextField1.topAnchor.constraint(equalTo: messageTextField.bottomAnchor , constant: 4).isActive = true
//        messageTextField1.rightAnchor.constraint(equalTo: containter.rightAnchor , constant: 4).isActive = true
//        messageTextField1.widthAnchor.constraint(equalTo: self.messageView.widthAnchor , constant: 4).isActive = true
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       
        guard let url = info[.imageURL] as? URL else {
                   return print("error")
               }
        
        let  urlSuffix = url.absoluteString.split(separator: ".")[1]
        print(urlSuffix)
        
        let fileType =    FileType(rawValue: String(urlSuffix))
            switch fileType {
            case .jpeg:
                  print("jpg file")
            default:
                print("default file")
            }
        
        
        print("imageURl : \(url)")
        let messageTextField = UITextField()
        messageTextField.baseWritingDirection(for: UITextRange().start, in: .forward)
        messageTextField.allowsEditingTextAttributes = true
        messageTextField.borderStyle = .line
        messageTextField.setNeedsFocusUpdate()
        messageTextField.backgroundColor = .red
        messageTextField.textColor = .black
        messageTextField.translatesAutoresizingMaskIntoConstraints = false
        messageTextField.text = "Ramesh "
        messageView.addArrangedSubview(messageTextField)
        let messageTextField1 = UITextField()
        messageTextField1.baseWritingDirection(for: UITextRange().start, in: .forward)
        messageTextField1.allowsEditingTextAttributes = true
        messageTextField1.borderStyle = .line
        messageTextField1.setNeedsFocusUpdate()
        messageTextField1.backgroundColor = .red
        messageTextField1.textColor = .black
        messageTextField1.translatesAutoresizingMaskIntoConstraints = false
        messageTextField1.text = "Ramesh "
        messageView.addArrangedSubview(messageTextField1)
        let containter = UILayoutGuide()
        messageView.addLayoutGuide(containter)
        messageTextField.leadingAnchor.constraint(equalTo: containter.leadingAnchor).isActive = true
        messageTextField.topAnchor.constraint(equalTo: containter.topAnchor , constant: 4).isActive = true
        messageTextField.rightAnchor.constraint(equalTo: containter.rightAnchor , constant: 4).isActive = true
        messageTextField.widthAnchor.constraint(equalTo: self.messageView.widthAnchor ).isActive = true
        
        messageTextField1.topAnchor.constraint(equalTo: messageTextField.bottomAnchor ).isActive = true
        messageTextField1.rightAnchor.constraint(equalTo: containter.rightAnchor , constant: 4).isActive = true
        messageTextField1.widthAnchor.constraint(equalTo: self.messageView.widthAnchor ).isActive = true
        let lableView = UILabel()
        lableView.text = "test file name"
        lableView.textAlignment = .center
        lableView.textColor = .black
        lableView.translatesAutoresizingMaskIntoConstraints = false

        let image = UIImage(systemName: "clear")
       let clearImageView = UIImageView(image: image)
        clearImageView.translatesAutoresizingMaskIntoConstraints = false
        let imageStackView = UIStackView()
        
    
        imageStackView.axis = .horizontal
        imageStackView.addArrangedSubview(lableView)
        imageStackView.addArrangedSubview(clearImageView)
        let imageStackViewContainer = UILayoutGuide()
        imageStackView.addLayoutGuide(imageStackViewContainer)
        lableView.leadingAnchor.constraint(equalTo: imageStackViewContainer.leadingAnchor).isActive = true
        clearImageView.leadingAnchor.constraint(equalTo: lableView.trailingAnchor, constant: 8).isActive = true
        messageView.addArrangedSubview(imageStackView)
       

        imageStackView.topAnchor.constraint(equalTo: messageTextField1.bottomAnchor ).isActive = true
//        imageStackView.rightAnchor.constraint(equalTo: containter.rightAnchor , constant: 4).isActive = true
//        imageStackView.widthAnchor.constraint(equalTo: self.messageView.widthAnchor ).isActive = true

        
//      let image   =  try UIImage(data:Data(contentsOf: url))
//
        
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
