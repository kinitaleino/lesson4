//
//  SecondViewController.swift
//  NavAndAnimation
//
//  Created by kinitaleino on 11/25/20.
//  Copyright © 2020 kinitaleino. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var changedView: UIView!
    

    @IBAction func changeConstraint(_ sender: Any) {
        
        let start = changedView.center
        
        UIView.animateKeyframes(withDuration: 1.2, delay: 0, options: .calculationModeLinear) { [self] in
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3){
                changedView.center = CGPoint(x: start.x - 100, y: start.y)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.3){
                changedView.center = CGPoint(x: start.x - 100, y: start.y + 100)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.3){
                changedView.center = CGPoint(x: start.x, y: start.y + 100)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.9, relativeDuration: 0.3){
                changedView.center = start
            }
        }completion: { _ in
            self.changedView.isHidden = false
        }
    }
}
