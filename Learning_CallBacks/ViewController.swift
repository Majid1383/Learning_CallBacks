//
//  ViewController.swift
//  Learning_CallBacks
//
//  Created by AbdulMajid Shaikh on 28/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var btnSelectDate: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func btnSelectDateClicked(_ sender: UIButton) {
        print("Button is clicked!")
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let vc = main.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        vc?.callBackCalled = { [weak self] data in
            self?.lblDate.text = data
        }
        
        self.navigationController?.pushViewController(vc!, animated: true)
       
    }
}
    


