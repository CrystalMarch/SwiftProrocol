//
//  ViewController.swift
//  SwiftProtocol
//
//  Created by 朱慧平 on 16/7/7.
//  Copyright © 2016年 Crystal. All rights reserved.
//

import UIKit
//  observe Protocol delegate
class ViewController: UIViewController,SecondProtocol {
    
    
    let gotoNextButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gotoNextButton.frame = self.view.bounds
        gotoNextButton.setTitle("gotoNext", forState: UIControlState.Normal)
        gotoNextButton.backgroundColor = UIColor.redColor()
        gotoNextButton.addTarget(self, action:#selector(ViewController.gotoNextButton(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(gotoNextButton)
        
    }
    func gotoNextButton(sender:UIButton) {
        print("Touch")
        let secondVC = SecondViewController()
        //        observe Protocol delegate
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    //    realize Protocol function
    func realizeProtocol(result:String){
        gotoNextButton.setTitle(result, forState: UIControlState.Normal)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

