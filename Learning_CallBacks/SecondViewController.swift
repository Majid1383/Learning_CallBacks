//
//  SecondViewController.swift
//  Learning_CallBacks
//
//  Created by AbdulMajid Shaikh on 28/10/24.
//

import UIKit

typealias callBack = (String) -> Void

class SecondViewController: UIViewController {
    
    var callBackCalled : callBack?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnSubmitClicked(_ sender: UIButton) {
        
        guard let text = textField.text, !text.isEmpty else {
            print("Text field is empty")
            return
        }
        
        // Call the callback if it has been set
        callBackCalled?(text)
        print("text",text)
        
        self.navigationController?.popViewController(animated: true)
        
    }
}
