//
//  ViewController.swift
//  TestingStuff
//
//  Created by Mihai Erős on 15/03/2019.
//  Copyright © 2019 Mihai Eros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // First View
        let firstView = CustomView(frame: CGRect(x: 40, y: 40, width: 250, height: 150))
        firstView.backgroundColor = .blue
        
        // Second View
        let txtField = UITextField(frame: CGRect(x: 5, y: 65, width: 240, height: 25))
        txtField.text = "this txtField DOESN'T WORK"
        txtField.textColor = .black
        txtField.borderStyle = .roundedRect
        
        let secondView = UIView(frame: CGRect(x: 40, y: 200, width: 250, height: 150))
        secondView.backgroundColor = .green
        secondView.addSubview(txtField)
        
        view.addSubview(firstView)
        view.addSubview(secondView)
    }
}

