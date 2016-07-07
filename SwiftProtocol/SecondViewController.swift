//
//  SecondViewController.swift
//  SwiftProrocol
//
//  Created by 朱慧平 on 16/7/7.
//  Copyright © 2016年 Crystal. All rights reserved.
//

import UIKit
//defind a Protocol
protocol SecondProtocol: NSObjectProtocol{
    
    func realizeProtocol(result:String)
}


class SecondViewController: UIViewController {
    let prorocolButton = UIButton()
//    defind a delegate
    weak  var delegate : SecondProtocol?
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.purpleColor()
        prorocolButton.frame = self.view.bounds
        prorocolButton.setTitle("Protocol", forState: UIControlState.Normal)
        prorocolButton.addTarget(self, action: #selector(SecondViewController.RealizeTheProrocol(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(prorocolButton)
        
    }
    func RealizeTheProrocol(sender:UIButton) {
        self.delegate?.realizeProtocol("Protocol seccess!")
//        call Protocol function
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
