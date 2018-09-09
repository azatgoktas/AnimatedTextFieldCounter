//
//  TextFieldCounter.swift
//  TextFieldCounter
//
//  Created by Azat Goktas on 7.09.2018.
//  Copyright © 2018 Azat Goktas. All rights reserved.
//

import UIKit

open class AnimatedTextFieldCounter: UITextField {
    
    
    @IBInspectable dynamic var counterRangeColor: UIColor = .gray
    @IBInspectable dynamic var maxLength: Int = 30
    @IBInspectable dynamic var heightOfCounterView: CGFloat = 5
    @IBInspectable dynamic var animationDuration: TimeInterval = 0.2
    @IBInspectable dynamic var shakeCount: Float = 1
    
    public var counterDelegate: AnimatedTextFieldCounterDelegate?
    private var widthConstraint: NSLayoutConstraint!
    
    private var counterView : UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        addTarget(self, action: #selector(textFieldValueChanged), for: .editingChanged)
        addCounterView()
    }
    
    public init(frame: CGRect, maxLength: Int, heightOfCounterView: CGFloat, animationDuration: TimeInterval, shakeCount: Float){
        super.init(frame: frame)
        
        self.maxLength = maxLength
        self.heightOfCounterView = heightOfCounterView
        self.animationDuration = animationDuration
        self.shakeCount = shakeCount
        
        self.backgroundColor = .white
        self.layer.borderWidth = 0.1
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        
        addTarget(self, action: #selector(textFieldValueChanged), for: .editingChanged)
        addCounterView()
        
    }
    
    @objc private func textFieldValueChanged(){
        guard let text = self.text else{return}
        let textCount = text.count
        if textCount <= maxLength {
            addRangeView()
        }else{
            counterDelegate?.reachedMaxLimit(textfield: self)
            removeLastCharacter()
        }
        
    }
    
    private func addRangeView(){
        
        let percentage = Float((text?.count)!) / Float(maxLength)
        let widthOfView = self.frame.width * CGFloat(percentage)
        
        if widthConstraint != nil{ //remove constraint
            counterView.removeConstraint(widthConstraint)
        }
        
        widthConstraint = counterView.widthAnchor.constraint(equalToConstant: widthOfView)
        widthConstraint.isActive = true
        
        UIView.animate(withDuration: animationDuration, animations: {
            self.layoutIfNeeded()
            
        }) { (finished) in
            self.layoutIfNeeded()
        }
        
    }
    
    private func addCounterView(){
        addSubview(counterView)
        counterView.backgroundColor = counterRangeColor
        
        counterView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        counterView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        counterView.heightAnchor.constraint(equalToConstant: heightOfCounterView).isActive = true
    }
    
    private func removeLastCharacter(){
        self.text = String((text?.prefix(maxLength))!)
        addRangeView()
        shake()
    }
    
    private func shake(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = shakeCount
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        
        layer.add(animation, forKey: "position")
    }
    
    
}

public protocol AnimatedTextFieldCounterDelegate {
    func reachedMaxLimit(textfield: AnimatedTextFieldCounter)
}

