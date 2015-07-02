//
//  ViewController.swift
//  Stopwatch
//
//  Created by Shikhar Vats on 7/1/15.
//  Copyright (c) 2015 IceAuror. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var count = 0
    
    func result() {
        
        count++
        
        var minute = count / 60

        var seconds = count % 60
        
        label.text = "\(minute) : \(seconds)"
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func play(sender: AnyObject) {
    
        if(timer.valid == false){
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        }
        else {
            
        }

    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    
    }
    
    @IBAction func Stop(sender: AnyObject) {
    
        timer.invalidate()
        
        count = 0
        
        label.text = "00 : 00"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

