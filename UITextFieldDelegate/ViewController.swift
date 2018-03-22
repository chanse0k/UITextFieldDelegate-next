//
//  ViewController.swift
//  UITextFieldDelegate
//
//  Created by D7703_28 on 2018. 3. 22..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtInput.delegate = self
        
        txtInput.placeholder = "입력하세요"
        txtInput.clearButtonMode = UITextFieldViewMode.whileEditing
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btInput(_ sender: Any) {
        lblResult.text = "Hello " + txtInput.text!
        txtInput.text = ""
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text = "Hello "+txtInput.text!
        txtInput.text = ""
        return true
    }

}

