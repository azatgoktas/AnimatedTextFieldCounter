//
//  ViewController.swift
//  AnimatedTextFieldCounter
//
//  Created by azattgoktas@gmail.com on 09/09/2018.
//  Copyright (c) 2018 azattgoktas@gmail.com. All rights reserved.
//

import UIKit
import AnimatedTextFieldCounter

class ViewController: UIViewController,AnimatedTextFieldCounterDelegate {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let textField = AnimatedTextFieldCounter(frame: CGRect(x: 40, y: 80, width: 320, height: 30), maxLength: 5, heightOfCounterView: 4, animationDuration: 0.2, shakeCount: 1)
        textField.counterDelegate = self
        
        self.view.addSubview(textField)
        
    }
    
    func reachedMaxLimit(textfield: AnimatedTextFieldCounter) {
        print("hey!")
    }

}

