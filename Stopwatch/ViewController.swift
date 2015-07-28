//
//  ViewController.swift
//  Stopwatch
//
//  Created by Tayseer Edouni on 6/16/15.
//  Copyright (c) 2015 Tayseer Edouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    var timer = NSTimer()
    var count = 0
    func updateTime(){
        count++
        displayLabel.text = "\(count)"
    }

    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        count = 0
        displayLabel.text = String(count)
    }
    
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
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

