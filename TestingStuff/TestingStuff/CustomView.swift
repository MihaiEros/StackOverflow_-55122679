//
//  CustomView.swift
//  TestingStuff
//
//  Created by Mihai Erős on 15/03/2019.
//  Copyright © 2019 Mihai Eros. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    lazy var button: UIButton = {
        let btn = UIButton(frame: CGRect(x: 10, y: 10, width: 230, height: 44))
        btn.backgroundColor = .red
        btn.setTitle("Button", for: .normal)
        btn.addTarget(nil, action: #selector(didTapButton), for: .touchUpInside)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let txtField = UITextField(frame: CGRect(x: 5, y: 65, width: 240, height: 25))
        txtField.text = "this txtField works"
        txtField.textColor = .black
        txtField.borderStyle = .roundedRect
        
        addSubview(txtField)
        addSubview(button)
    }
    
    required init() {
        super.init(frame: .zero)
        // TODO
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapButton() {
        print("did tap btn")
    }
}
