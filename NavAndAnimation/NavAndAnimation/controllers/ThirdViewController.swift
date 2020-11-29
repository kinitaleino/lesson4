//
//  ThirdViewController.swift
//  NavAndAnimation
//
//  Created by kinitaleino on 11/29/20.
//  Copyright © 2020 kinitaleino. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var groundView: UIView!
    @IBOutlet weak var transitionView: UIView!
    
    private var isFlipped: Bool = false
    
    
    @IBAction func tap(_ sender: Any) {
        UIView.transition(from: isFlipped ? transitionView: groundView, to: isFlipped ? groundView:transitionView, duration: 1, options:[.transitionCurlUp, .showHideTransitionViews]){ _ in
            self.isFlipped.toggle()
        }
    }
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func tapForColor(_ sender: Any) {
        
        switch Int.random(in: 0...3){
        case 0: colorView.backgroundColor = .red
            bottomConstraint.constant = 40
        case 1: colorView.backgroundColor = .green
            bottomConstraint.constant = 40
        case 2: colorView.backgroundColor = .yellow
            bottomConstraint.constant = 40
        case 3: colorView.backgroundColor = .blue
            bottomConstraint.constant = 40
        default:break
        }
        
    }
    
}
