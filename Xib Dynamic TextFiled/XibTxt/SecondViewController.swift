//
//  SecondViewController.swift
//  XibTxt
//
//  Created by Jay Vasdewani on 29/06/18.
//  Copyright © 2018 Jay Vasdewani. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var no:Int = 0
    var arr = [UITextField]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Xposition = self.view.frame.width/7
        var yPosition = self.view.frame.height/7 * 2
        
        for i in 1...no {
            
            let label = UILabel(frame: CGRect(x: Xposition, y: yPosition, width: self.view.frame.width/7 * 5 , height: 30))
            label.backgroundColor = UIColor.orange
            label.text = arr[i].text
            label.textAlignment = .center
            self.view.addSubview(label)
            yPosition = yPosition + 50
        }
    }


}
