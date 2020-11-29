//
//  YellowViewController.swift
//  NavAndAnimation
//
//  Created by kinitaleino on 11/29/20.
//  Copyright © 2020 kinitaleino. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myButton = UIButton(frame: CGRect(x:100,y:400,width:200,height:100))
        myButton.setTitle("Open", for: .normal)
        myButton.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(myButton)

    }
    @objc func buttonClicked(){
        print("Button Clicked")
        // QUESTION: How can I show another ViewController? 
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

}
