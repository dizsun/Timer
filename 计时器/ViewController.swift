//
//  ViewController.swift
//  计时器
//
//  Created by SunDiz on 16/4/1.
//  Copyright © 2016年 SunDiz. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var lblSecond: UILabel!
    var currentSecond = 0.0
    
    var timer = NSTimer()
    
    @IBAction func btnReset() {
        timer.invalidate()
        currentSecond = 0
        lblSecond.text! = "0"
    }
    
    @IBAction func btnStart() {
        timer = NSTimer(timeInterval: 0.01, target: self, selector: Selector("changeLblText"), userInfo: nil, repeats: true)
        NSRunLoop.mainRunLoop().addTimer(timer, forMode: NSDefaultRunLoopMode)
    }
    
    @IBAction func btnStop() {
            timer.invalidate()
    }
    
    func changeLblText(){
        currentSecond += 0.01
        lblSecond.text! = String(format: "%.2f", arguments: [currentSecond])
    }

}

