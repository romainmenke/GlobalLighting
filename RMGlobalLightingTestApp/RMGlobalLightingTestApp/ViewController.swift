//
//  ViewController.swift
//  RMGlobalLightingTestApp
//
//  Created by Romain Menke on 21/11/15.
//  Copyright © 2015 Romain Menke. All rights reserved.
//

import UIKit
import RMGlobalLighting

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RMStar.sol().angle = 10
        
        RMStar.sol().distance = 0
        RMStar.sol().relativeDepth = 2
        
        let earth = RMLightingView(frame: CGRect(x: 100, y: 100, width: 50, height: 50), depth:nil)
        earth.backgroundColor = UIColor.blueColor()
        let mars = RMLightingView(frame: CGRect(x: 50, y: 50, width: 30, height: 30), depth:nil)
        mars.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(mars)
        self.view.addSubview(earth)

        
    }
    
    override func viewDidAppear(animated: Bool) {

        RMStar.sol().lightsOn()
        
    }

    @IBAction func press(sender: AnyObject) {
        RMStar.sol().animateWithDuration(1.0, animations: { () -> Void in
            RMStar.sol().angle -= 50
            RMStar.sol().spread = 2
            RMStar.sol().shadowColor = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.4)
            
            }, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

